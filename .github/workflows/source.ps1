# Powershell to set the environment from batch file argument passed to it 
if ( $args.Count -eq 0 ) {
    write-host "Usage: source.ps1 <batch_file>"
}
else
{
    $batch=$args[0]
    cmd /c "$batch&set" |
    foreach {
       if ($_ -match "=") {
            $v = $_.split("="); set-item -force -path "ENV:\$($v[0])"  -value "$($v[1])"
        }
    }
}

