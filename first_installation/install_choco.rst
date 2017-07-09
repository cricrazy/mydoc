How to Install Chocolatey
=========================

- Open command promt in a administrator mode.
- Copy/paste the following.:
    
   @"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

That's it. If everything goes well, you should have chocolatey installed on your computer.
