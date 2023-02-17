$Path = "D:\Coding\Github projects\Multithreating-delete-windows\exampleFiles"

$files = Get-ChildItem $Path -File | Select-Object -First 1000

$threads = @()

foreach ($file in $files) {
    $thread = New-Object System.Threading.Thread(`
        [System.Threading.ThreadStart]`
        {
            Remove-Item $file.FullName
        }
    )
    $threads += $thread
    $thread.Start()
}

foreach ($thread in $threads) {
    $thread.Join()
}

# If not working well contact me