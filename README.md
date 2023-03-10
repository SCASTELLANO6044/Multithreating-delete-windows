## Cómo puedes usar el script delete-files.ps1

Crea un archivo de texto vacío en tu equipo y copia el código del script en el archivo.

Guarda el archivo con la extensión .ps1, por ejemplo delete-files.ps1.

Abre PowerShell como administrador.

Ejecuta el siguiente comando en PowerShell para permitir la ejecución de scripts:

`'Set-ExecutionPolicy RemoteSigned'`

Navega hasta la ubicación del archivo delete-files.ps1 utilizando el comando cd:

`cd C:\path\to\script`

Ejecuta el siguiente comando para ejecutar el script y eliminar el contenido de una carpeta:

`.\delete-files.ps1 -Path "C:\path\to\folder"`

Reemplaza C:\path\to\folder con la ruta completa a la carpeta que deseas eliminar. El script comenzará a ejecutarse y eliminará el contenido de la carpeta de manera paralela, utilizando múltiples hilos. Una vez que se hayan eliminado todos los archivos, el script finalizará.

## Crear 1000 archivos vacíos

Para poder probar el funcionamiento paralelamente se ha creado otro script (create-empty-files.ps1) que creará 1000 archivos vacíos en una carpeta determinada.

Cómo puedes usar el script para crear 1000 archivos vacíos en una carpeta:

Crea un archivo de texto vacío en tu equipo y copia el código del script en el archivo.

Guarda el archivo con la extensión .ps1, por ejemplo create-empty-files.ps1.

Abre PowerShell como administrador.

Ejecuta el siguiente comando en PowerShell para permitir la ejecución de scripts:

`Set-ExecutionPolicy RemoteSigned`

Navega hasta la ubicación del archivo create-empty-files.ps1 utilizando el comando cd:

`cd C:\path\to\script`

Ejecuta el siguiente comando para ejecutar el script y crear 1000 archivos vacíos en una carpeta:

`.\create-empty-files.ps1 -Path "C:\path\to\folder"`

Reemplaza C:\path\to\folder con la ruta completa a la carpeta donde deseas crear los archivos. El script comenzará a ejecutarse y creará 1000 archivos vacíos en la carpeta especificada. Una vez que se hayan creado todos los archivos, el script finalizará.