# Script Powershell pour lister les tâches planifiées présentes sur une machine


## Description
Ce script PowerShell extrait toutes les tâches planifiées (actives et non actives) sur un serveur Windows et les exporte dans un fichier CSV. Le script offre la possibilité de filtrer uniquement les tâches actives.

## Auteur et Organisation
- **Auteur** : EL BAJOURY Grégory
- **Organisation** : GA SMART BUILDING
- **Date de création** : 29.11.2023
- **Version** : 1.0

## Utilisation

### Prérequis
- PowerShell 5.0 ou ultérieur.
- Accès administratif sur la machine où le script sera exécuté.

### Paramètres du Script
- `$OutputPath` : Chemin du fichier de sortie (par défaut : `$env:USERPROFILE\Desktop\Taches Planifiées`).

### Exécution du Script
Pour exécuter le script, naviguez jusqu'au répertoire contenant le script et utilisez la commande suivante dans PowerShell :

```powershell
.\NomDuScript.ps1
```
### Filtre des Tâches Planifiées Actives
Par défaut, le script récupère toutes les tâches planifiées. Pour filtrer et récupérer uniquement les tâches actives, décommentez la ligne avec Where-Object dans le script.

### Fonctionnalités
Récupère toutes les tâches planifiées sur un serveur Windows.
Permet de filtrer les tâches actives.
Exporte les données dans un fichier CSV avec un horodatage pour éviter les écrasements de fichiers.
Gère les erreurs lors de l'exécution du script.
Gestion des Erreurs
Le script inclut une gestion basique des erreurs pour capturer et afficher les messages d'erreur en cas de problème lors de l'exécution.

### Licence
Ce script est fourni "tel quel", sans garantie d'aucune sorte.

```
Ce fichier README fournit une vue d'ensemble claire du but et de l'utilisation du script, ainsi que des informations détaillées sur son exécution et sa sortie. Vous pouvez l'ajuster selon vos besoins spécifiques.

```

