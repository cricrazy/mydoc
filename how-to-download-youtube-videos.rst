Download Youtube Videos
=======================

Split Mp3 into listenable format of about 12 minutes
----------------------------------------------------
* This command will convert mp3 into segments of 12 minutes mp3. 
* The name will be formatted as 01-nameoffile.mp3, 02-nameoffile.mp3 etc.
* In the below command, @n2 means add a incremental number with 2 digits,
  i.e. 01, 02, ... This is useful where some audio players sort the playlist 
  in a unique ways.::

    mp3splt -t 12.0 -d split -o @n2-@f "Mere Christianity - Audiobook - C. S. Lewis.mp3"

**Prerequisite** 
- Install mp3splt for windows.  (Attached here : password: amit)

How to Download youtube video into mp3 using youtube-dl
-------------------------------------------------------
Copy this four files in your working directory. (see youtube-dl.zip 
attachement, with password - amit)

* youtube-dl.exe
* ffmpeg.exe
* ffplay.exe
* ffprobe.exe

Now type the following::

  ; Update youtube-dl
    pip install --upgrade youtube-dl

    youtube-dl --extract-audio --audio-format mp3 -i --audio-quality 0 "https://www.youtube.com/watch?v=rPOrAxGXFno&t=19178s"
    
  ; -i - allows it to continue if the error occurs in a playlist.
  ; --write-auto-sub - to download subtitles also

* make sure you use --audio-quality 0 (which is the highest quality), 
  without this the mp3 can be lower quality. 
 
