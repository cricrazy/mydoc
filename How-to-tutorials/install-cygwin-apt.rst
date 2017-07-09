Install Cygwin & Apt
====================

- Install cygwin. 
- Install apt-get like manager, ``apt-cyg`` as follows::

   wget rawgit.com/transcode-open/apt-cyg/master/apt-cyg
   install apt-cyg /bin

 Once it is installed you can install the following.

.. code-block:: bash

   apt-cyg install nano   
   apt-cyg install git
   apt-cyg install ca-certificates   ; need for git
   apt-cyg install bash-completions
   apt-cyg install curl
   apt-cyg install git-svn
   apt-cyg install python-setuptools
   apt-cyg install rsync
   apt-cyg install vim
   apt-cyg install figlet
   apt-cyg install make
   apt-cyg install openssh
   apt-cyg install ruby
   apt-cyg install ctag
   apt-cyg install gcc
   apt-cyg install make automake
   apt-cyg install imagemagick
   pip install pygments     ; install pygments for sphinx-doc

etc...