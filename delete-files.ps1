$maxThreads = 50
$filesPerThread = 20

function Delete-Files {
    param(
        [string]$Path
    )

    $files = Get-ChildItem $Path -File
    $fileCount = $files.Count

    $threads = [System.Collections.ArrayList]@()

    for ($i = 0; $i -lt $fileCount; $i += $filesPerThread) {
        $thread = [System.Threading.Thread]::new(
            [System.Threading.ThreadStart]::new({
                for ($j = $i; $j -lt $i + $filesPerThread -and $j -lt $fileCount; $j++) {
                    Remove-Item $files[$j].FullName
                }
            })
        )
        $thread.Start()
        $threads.Add($thread)

        while ($threads.Count -ge $maxThreads) {
            [System.Threading.Thread]::Sleep(100)
            $threads.RemoveAll({ $_.IsAlive -eq $false })
        }
    }

    while ($threads.Count -gt 0) {
        [System.Threading.Thread]::Sleep(100)
        $threads.RemoveAll({ $_.IsAlive -eq $false })
    }
}

Delete-Files -Path "D:\Coding\Github projects\Multithreating-delete-windows\exampleFiles"
