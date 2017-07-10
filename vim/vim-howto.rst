Vim Help
========

.. contents:: Table of Contents
.. sectnum::

Ag (Silver Searcher) Plugin for Vim
-----------------------------------

**Basic example**

.. code-block:: vim
  
    :Ag readme$ " finds word readme at the end of line


**More examples**

.. code-block:: vim

  :Ag -Q datk_findfile.pro " exact pattern
  :Ag -i datk_findfile     " ignore cases, will also find DATK_findfile
  :Ag -G pro$ datk_findfile  " limit the search to certain filename/extension
  :Ag --ignore-dir="*.cpr" datk_findfile " filter out certain files

**Advanced usage**

.. code-block:: vim

   :Ag -i --before 4 --after 4 datk_findfile /datk_code/datk_devel

- Options ``-i - --ignore-case``
- Search Pattern
- Path 

Why Vim - Some of the most useful time saving tips
--------------------------------------------------

Modifying & Editing Comments
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
- Vim automatically add semi colons and also indent the message based on
  previous line. It is much easier to edit the existing text.
  
.. image:: ..\images\vim1.gif
   :alt: Automatic indentation and comments

Using paragraph formatter ``Par`` with Vim
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ..\images\vim_par.gif
   :alt: par with vim

**Before**

.. code-block:: IDL
    :linenos:

    ; This user utility reads information 
    ;   from a Batch Life Data Selection
    ;  file (*.data) and life controls file (*.life_ctl). 
    ;  It checks if there are blank lines before the thd files in the data file. 
    ;  In case there are no extra blank lines then 
    ;  it proceeds to check if the parameters in batch life data file
    ;  are present in the associated GDF or THD file.

**After**

Type the following.::

  - select visual block, type 
    
    '<,'>!par 
    or
    '<,'>!par 45  ; (number of columns)

.. code-block:: IDL 
   :linenos:

    ; This user utility reads information from a
    ; Batch Life Data Selection file (*.data) and
    ; life controls file (*.life_ctl). It checks
    ; if there are blank lines before the thd
    ; files in the data file. In case there are
    ; no extra blank lines then it proceeds to
    ; check if the parameters in batch life data
    ; file are present in the associated GDF or
    ; THD file.


Advanced search and replace to change consecutive numbers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
here is a trick to change consecutive numbers, when a new one is added in the
middle. (using ``submatch``) Notice, since, we did not use ``g`` (global)
option, it will only replace first digit and not one inside the text
descriptions of article.

.. image:: ..\images\vim-search-replace-modify-number-sequences.gif

Advanced search and replace to add line numbers
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
This trick adds a line number in front of every line.
When the string starts with ‘\=’, it should be evaluated as an expression.
Using the ‘line’ function we can get the current line number.
By combining both the functionality the substitution does the line 
numbering of all lines.

.. code-block:: vim
    :linenos:
    
     :%s/^/\=line(".") . ". "/g

.. image:: ..\images\vim-search-replace-add-line-numbers.gif

     
Using Vim Folds for Folding DATK's header comment information
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Vim fold takes a little time to get used to, but it is an incredible way to fold
your codes to focus on a specific section of the code. I created my first ever
vimscript to create folds for DATK Header sections. 
 
- It starts with either of START ANALYSIS, START ARGUMENT, START CONTROL TABLE
- It ends with either of END ANALYSIS, END ARGUMENT, END CONTROL TABLE
- It also has subsections for PURPOSE, Controls, Tables, Inputs, Outputs, NAME, 
  CONTROL_NAME.

.. image:: ..\images\idl_folding.gif
   :alt: folding header comments

It is located at ::

  C:\Users\chrisa\Documents\Apps\Portable-programs\gVimPortable\Data\settings\vimfiles\after\ftplugin\idlang\folding.vim

Here is the vimscript``. 

.. code-block:: vim
    :linenos:
    
     " This function uses folds to close DATK's
     " comment section in analyses.
     "
     " 2016-09-01  AC
     "
     function! IdlangFolds()
       let thisline = getline(v:lnum)
     
     " matches purpose, controls, name, control name in different comment sections
     " \C matches the string with case sensitivity
     
       if match(thisline, '; \(PURPOSE\C\|Controls\\:\|Inputs\\:\|Outputs\\:\|Tables\\:\|NAME\C:\|CONTROL_NAME\C:\)') >= 0
         return ">2"
       elseif match(thisline, '; \(START ARGUMENT \|START CONTROL TABLE \|START ANALYSIS\)') >= 0
         return ">1"
       elseif match(thisline, '; \(END CONTROL TABLE\|END ANALYSIS\|END ARGUMENT\)') >= 0
         return "<1"
       else
         return "="
     endfunction
     setlocal foldmethod=expr
     setlocal foldexpr=IdlangFolds()
     
     " customize how Fold displays text headers
       function! IdlangText()
       " get # of lines
         let foldsize = (v:foldend-v:foldstart)
         return getline(v:foldstart).' ('.foldsize.' lines)'
       endfunction
       setlocal  foldtext=IdlangText()


Call Vim from Command Line, Execute Commands and Close
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Here is a ``simple`` way to execute commands from command line using Vim. 

- This example will open the specified mpr file in vim.
- It will pass three commands. 
  * change all ! with ".
  * save the file. 
  * quit the file. 
- It will also make those above specified changes, save file and close the file

.. code-block:: cmd
    :linenos:
    
     vim.exe -c ":%s/^!/\"/g" -c ":w" -c ":qa" test.mpr 
