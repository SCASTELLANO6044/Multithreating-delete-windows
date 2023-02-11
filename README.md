Cómo puedes usar el script delete-files.ps1

Crea un archivo de texto vacío en tu equipo y copia el código del script en el archivo.

Guarda el archivo con la extensión .ps1, por ejemplo delete-files.ps1.

Abre PowerShell como administrador.

Ejecuta el siguiente comando en PowerShell para permitir la ejecución de scripts:

'Set-ExecutionPolicy RemoteSigned'

Navega hasta la ubicación del archivo delete-files.ps1 utilizando el comando cd:

cd C:\path\to\script

Ejecuta el siguiente comando para ejecutar el script y eliminar el contenido de una carpeta:

.\delete-files.ps1 -Path "C:\path\to\folder"

Reemplaza C:\path\to\folder con la ruta completa a la carpeta que deseas eliminar. El script comenzará a ejecutarse y eliminará el contenido de la carpeta de manera paralela, utilizando múltiples hilos. Una vez que se hayan eliminado todos los archivos, el script finalizará.