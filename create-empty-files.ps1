function Create-Files {
    param(
        [string]$Path
    )

    for ($i = 1; $i -le 1000; $i++) {
        New-Item -ItemType File -Path "$Path\file$i.txt"
    }
}

Create-Files -Path "D:\Coding\Github projects\Multithreating-delete-windows\example files"