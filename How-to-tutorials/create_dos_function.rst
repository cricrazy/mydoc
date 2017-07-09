Create DOS function
===================

dos function starts with label and ends with ``goto:eof``.

http://www.dostips.com/DtTutoFunctions.php

.. code-block:: batch

   :label
   echo this is my first dos function
   goto:eof

To call function 
----------------

.. code-block:: dos

       call:label 

Example
-------

``The main script``: starting at line 1 ending with a GOTO:EOF command that terminates the script.
``The function section``: filling the second half of the batch file with one or more functions to be callable from the main script.

.. code-block:: batch

   @echo off

   echo.going to execute myDosFunc
   call:myDosFunc
   echo.returned from myDosFunc

   echo.&pause&goto:eof

   ::--------------------------------------------------------
   ::-- Function section starts below here
   ::--------------------------------------------------------

   :myDosFunc    - here starts my function identified by it`s label
   echo.  here the myDosFunc function is executing a group of commands
   echo.  it could do a lot of things
   goto:eof

