Make Timed Screenshots and Videos
=================================

This is the batch file to make a video from timed screenshots. 
There is a software that allows timed screenshots. 
This batch file will take these timed screenshots and convert
into the video file. (One per day)

.. code-block:: batch

   ECHO OFF
   :: *** Section 1 - User Settings Begin ***
   :: *** Make changes to this section alone as required ***
   E:
   :: *** Working Directory - Location of Data - You can hard-code a path ***
   SET BATCH_WORKING_DIR="E:\Timed_Screenshots"
   :: *** Location of pro and batch files - You can hard-code a path ***
   SET BATCH_DATK_PRO=%BATCH_WORKING_DIR%
   :: *** DATK VERSION 9_2 for DATK 9_2 ***
   SET BATCH_DATK_VERSION=10_0
   
   :: *** User Settings End - Do not change anything below this line ***
   :: ***************************************************************************
   
   :: *** Section 2 - Developer Settings Begin ***
   :: Location of DATK installation - 32 vs. 64 Bit OS
   IF EXIST "%PROGRAMFILES(x86)%" (
   SET "BATCH_DATK_TOP=%PROGRAMFILES%\Caterpillar\DATK\%BATCH_DATK_VERSION%\datk\"
   ) ELSE (
   SET "BATCH_DATK_TOP=%PROGRAMFILES%\Caterpillar\DATK\%BATCH_DATK_VERSION%\datk\"
   )
   SET BATCH_WORKING_DIR=%BATCH_WORKING_DIR%\
   SET BATCH_DATK_PRO=%BATCH_WORKING_DIR%\
   :: ***************************************************************************
   :: *** Section 3 - Execution Script Begin***
   SET DATK_BATCH=1
   CALL "%BATCH_DATK_TOP%bin\datk_setup.bat"
   SET WAVE_PATH=%BATCH_DATK_PRO%;%WAVE_PATH%
   "%WAVE_TOP%\bin\bin.win64\wave.exe" "%BATCH_DATK_PRO%make_video_of_screenshots_and_manage.batch" > _
     "%BATCH_WORKING_DIR%make_video_of_screenshots_and_manage.log"
   
   EXIT
