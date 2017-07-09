Download youtube videos/playlists using youtube-dl
==================================================

- Install ``Youtube-dl``.:

.. code-block:: bash
    
    sudo curl -L https://yt-dl.org/downloads/2016.06.27/youtube-dl -o /usr/local/bin/youtube-dl
    sudo chmod a+rx /usr/local/bin/youtube-dl

- Install ``ffmpeg``.
  
.. code-block:: bash

    brew install ffmpeg

- Browse to the desktop or any directory, where you want to download the files. 
- Type the following. 

.. code-block:: bash

   youtube-dl --extract-audio --audio-format mp3 https://youtube.com/url

Download Youtube Playlist (Video)
---------------------------------

- Enable output configuration in the ``youtube-dl`` call. 
- ``--output "%(autonumber)s-%(title)s``  -> for autonumbering and original title
  of videos
- If you would like to add numbers to your playlist, you can type, 
  ``--autonumber-size 2``. It will set the autonumbering to two digits. (Default
  is 4 e.g. 0001).
- Add metadata of a video, ``--add-metadata``.

.. code-block:: bash

    youtube-dl -output "%(autonumber)s-%(title)s" --add-metadata --autonumber-size 2 "URL"

Download Youtube Playlist (Audio - Mp3)
---------------------------------------

.. code-block:: bash

    youtube-dl --extract-audio --audio-format mp3 "url"

Convert mp4 to mp3 using ``ffmpeg``
------------------------------------
- Install ffmpeg. 

.. code-block:: bash

    brew install ffmpeg

**Convert mp4 to mp3 on mac terminal**

.. code-block:: bash

   ffmpeg -i k.mp4 -q:a 0 -map a k.mp3

Batch convert to Mp3 using Bash script
--------------------------------------

.. code-block:: bash

    for f in *.mp4;do ffmpeg -i "$f" -q:a 0 -map a "$f.mp3";done
    for f in *.mkv;do ffmpeg -i "$f" -q:a 0 -map a "$f.mp3";done

Download video, convert to mp3, keep video
------------------------------------------

- Title to start with number 000. (Easy for sorting)

.. code-block:: bash

    youtube-dl --extract-audio --audio-format mp3 --keep-video -o "%(autonumber)s-%(title)s.%(ext)s" --autonumber-size 3 "https://www.youtube.com/watch?v=X0FoelOIZM0&list=PLAwxTw4SYaPnYajEbZvqtcVWQ6XGhvtOW" --add-metadata

    `extract-audio` - extracts audio from the videos (should use `keep-video`)
    `audio-format` - enter the audio format
    `autonumber` - adds autonumbering, this is useful to sorting.