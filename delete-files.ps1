function Delete-FilesParallel {
    param(
        [string]$Path
    )

    Get-ChildItem $Path -File | ForEach-Object {
        Start-Job {
            Remove-Item $_.FullName
        }
    }

    while (Get-Job | Where-Object { $_.State -eq 'Running' }) {
        Start-Sleep -Seconds 1
    }

    Get-Job | Remove-Job
}

Delete-FilesParallel -Path "D:\Coding\Github projects\Multithreating-delete-windows\example files"