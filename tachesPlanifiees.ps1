#=============================================================================#
#                                                                             #
# Powershell Script for listing all scheduled tasks on a machine              #
# Author: EL BAJOURY Grégory -                                                #
# Organisation : GA SMART BUILDING                                            #
# Creation Date: 11.29.2023                                                   #
# Version: 1.0                                                                #
#                                                                             #
#=============================================================================#

<#
.SYNOPSIS
Ce script extrait toutes les tâches planifiées (actives et non actives) et les exporte dans un fichier CSV.

.DESCRIPTION
Le script récupère les détails de toutes les tâches planifiées sur un serveur Windows et les enregistre dans un fichier CSV. Décommentez la ligne avec 'Where-Object' pour filtrer uniquement les tâches actives.

#>

# Paramètre pour spécifier le chemin du fichier de sortie
param (
    [string]$OutputPath = "$env:USERPROFILE\Desktop\Taches Planifiées"
)

# Fonction principale pour exporter les tâches planifiées
function Export-ScheduledTasks {
    try {
        # Récupération de toutes les tâches planifiées
        $ScheduledTasks = Get-ScheduledTask

        # Vérification de l'existence du chemin de sortie
        if (-not (Test-Path -Path (Split-Path -Path $OutputPath -Parent))) {
            Throw "Le chemin spécifié pour le fichier CSV n'est pas valide."
        }

        # Création du nom de fichier avec un horodatage pour éviter les écrasements
        $DateTime = Get-Date -Format "dd-MM-yyyy-HH'h'mm"
        $OutputFile = "$OutputPath" + "_$DateTime.csv"

        # Exportation des tâches planifiées dans un fichier CSV
        $ScheduledTasks | Export-Csv -Path $OutputFile -NoTypeInformation -Delimiter ";" -Encoding UTF8

        # Message de confirmation de l'exportation
        Write-Host "Les données ont été exportées avec succès vers $OutputFile"
    } catch {
        # Gestion des erreurs lors de l'exécution du script
        Write-Host "Erreur: $_.Exception.Message" -ForegroundColor Red
    }
}

# Exécution de la fonction d'exportation des tâches planifiées
Export-ScheduledTasks
