<# : batch prelude (https://stackoverflow.com/a/33065387/60281)
@echo off
PowerShell -ExecutionPolicy Bypass -NoProfile -NoLogo "iex (${%~f0} | out-string)"
Exit /b %errorlevel%
: end batch prelude #>

$rootdirs = (
@( 'P4STREAMS', 'Perforce Streams' ),
@( 'P4CLIENTS', 'Perforce non-stream repositories' )
)

foreach ( $arr in $rootdirs )
{
    $var = [Environment]::GetEnvironmentVariable( $arr[0] )

    if ( $null -eq $var )
    {
        Write-Output "$($arr[0])=UNSET"
    }
    else
    {
        Write-Output "$($arr[0])=$var"
    }
}

# vim: filetype=ps1
