Change Wallpaper from Command Line Batch File
=============================================

This batch file will change the wallpaper to asciidoc cheatsheet
from the command line. 

.. code-block:: batch
   
    @ECHO OFF
    
    :: Paste the wallpaper, desired, 
    :: due to its extension (type bmp or jpg), 
    :: for an own folder within it. 
    :: Do not modify the name of the desired file
    
    copy ""C:\Users\chrisa\datk\pro\Wallpaper_Asciidoc-cheatsheet.bmp"" "C:\Users\chrisa\datk\pro\wallpaper_win7.bmp"
    
    :: Add the required values ​​to the registry, 
    :: if these people are using a System Wallpaper. 
    :: If they have always modified their wallpapers, 
    :: the following lines are not necessary. 
    ::"They have no habit of hurting themselves, constantly"
    
    REG ADD "HKCU\Control Panel\Desktop" /V Wallpaper /T REG_SZ /F /D "C:\Users\chrisa\datk\pro\wallpaper_win7.bmp"
    
    :: Modify the following line in the last number to 0 
    :: if you want to center the bitmap on the desktop. 
    :: Change the last number in the following line to 2 
    :: if you wish to extend the bitmap vertically and 
    :: horizontally to fit on your desktop.
    
    REG ADD "HKCU\Control Panel\Desktop" /V WallpaperStyle /T REG_SZ /F /D 0
    
    :: Change to 0 (zero), the last number not to "pave" the image, 
    :: set it to A (1) will be tiled.
    
    REG ADD "HKCU\Control Panel\Desktop" /V TileWallpaper /T REG_SZ /F /D 0
    
    :: The following lines energize desktop
    
    %SystemRoot%\System32\RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
    
    ::The following line locks (locks) the workstation (server).
    
    ::%SystemRoot%\System32\RUNDLL32.EXE user32.dll, LockWorkStation

