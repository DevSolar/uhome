<# : batch prelude (https://stackoverflow.com/a/33065387/60281)
@echo off
PowerShell -ExecutionPolicy Bypass -NoProfile -NoLogo "iex (${%~f0} | out-string)"
Exit /b %errorlevel%
: end batch prelude #>


