Git Help and Gitlab Setup Manual
================================

.. toctree::
   :titlesonly:
   :maxdepth: 2

   vim_help 

GIT Help Commands
-----------------

* to initiate git repository
  ** ``git init``
* to add all files in the folder
   ** ``git add .``
* to add a particular file
    ** ``git add test.pro``
* Once staged, commit file with submission message
    ** ``git commit -m "enter the message"``
* Both to add and commit a file together
    ** ``git commit -am "message"``
* Find the status of the repo
    ** ``git status``
    ** it will tell all modifies, staged files in the repository
* Create a new branch
    * ``git branch newidea``
    * By default, you are working in the 'Master' branch
    * once you create a branch, it will not be changed automatically
    * to change to the new branch, you need to check out it first
        * ``git checkout newidea``
    * to create a branch and switch to it in one line in git bash
        * ``git checkout -b newidea``
* List all branches
    ** ``git branch``
* Merge a branch to the master
    * ``git merge newidea``
    * Once you have merged the branch, you can delete it too.
        * ``git branch -d newidea``
* To view all git logs in the project
    ** ``git log``
    ** to view it in a graph
    ** ``git log --graph``
    ** To view it in a graphical mode
        * ``gitk --all``
* Clone/grab a project from github or anywhere
    ** ``git clone git://github.com/jquery/jquery.git``
* Push all the branches to the the remote
    ** ``git push remotename --all``
* To push all your tags:
    ** ``git push remotename --tags``
* To push all the branches and tags as well.
    ** ``git push remotename --mirror``

GIT Initial Setup & Tips
------------------------
* on windows, look for .gitconfig file in your $HOME directory, 
it is currently set to %userprofile% (c:/users/chrisa)
* Git alias for quick writing::

        $ git config --global alias.co checkout
        $ git config --global alias.br branch
        $ git config --global alias.ci commit
        $ git config --global alias.st status

* For a quick command help, ``git <command> -h``
* make Git ignore files that already exist in your project, 
  ** ``git update-index --assume-unchanged user_project.sublime-workspace (filename)``
* Remove the files that is deleted from the folder
  ** git add -u``
  ** git commit -, "removed file"``

**NOTE** - ``git add -u`` will only update the index. 
if there are new files in the folder it will not add it,
so you have to do ``git add .``. 
You can however use ``git add -A`` which will both update and add new files.

How did I setup my remote git repository?
-----------------------------------------
* Created a mygit folder on p drive as a folder for all git repositories.
* Created a genasys repo (for the genasys LIB folder) and genasys_userlib repo (for the userlib folder)
* Created pro repo for the datk/pro folder.
* Created datk_devel for datk development folder. (big one)

How to create a remote repository?
----------------------------------
* in git bash, ``mkdir p:\mygit\genasys``
* initialize, ``git init --bare``

How to create local repository?
-------------------------------
* Browse to the directory that you want to create a repo (e.g. c:/genasys/lib) in Git Bash.
* Notice git does not take '\' it only takes '/'.
* initialize the repo - ``git init``
* add all the files - ``git add .``
* stage and commit all files - ``git commit -am "Initial version"``
* add a remote - ``git remote add lib p:/mygit/genasys``
* check the remote - ``git remote -v``
* push all the files to remote - ``git push lib master``

Remove added file before commit
-------------------------------
* if you have added file by mistake before committing, ``git add .``
* you can remove it by ``git rm -r --cached .``

Dealing with Line ending warning messages on Windows
----------------------------------------------------
* On Windows, you simply pass true to the configuration. For example:
``git config --global core.autocrlf true``

Branching, Merging and Conflict resolution
------------------------------------------
* Example file: ``c:/users/chrisa/datk/pro/conflict_in_git.md``
* create a dummy file, and add and commit to the ``master`` branch.
* create a new branch, ``git branch conflict``
* check out the new branch, ``git checkout conflict``
* make a modification to the file, commit the changes.
* now, check out the master branch, ``git checkout master``
* make a modification to the same line and commit the changes. ``git commit -am "added a conflict"``
* now try to merge the changes of ``conflict`` into master.
  git checkout master
  git merge conflict

You will get the following conflict message.::

  $ git merge conflict
  Auto-merging conflict_in_git.md
  CONFLICT (content): Merge conflict in conflict_in_git.md
  Automatic merge failed; fix conflicts and then commit the result.

type ``git status`` to find out the unmerged file that has conflict.::

    $ git status
    On branch master
    You have unmerged paths.
    (fix conflicts and run "git commit")

    Unmerged paths:
    (use "git add <file>..." to mark resolution)
    both modified:   conflict_in_git.md
    no changes added to commit (use "git add" and/or "git commit -a")

* open the file that has conflict.
* you will see the lines with conflict as follow, 

with HEAD pointing to the checked out branch (e.g. master in this case)::

  <<<<<<< HEAD
  <div id="footer">contact : email.support@github.com</div>
  =======
  <div id="footer">
  please contact us at support@github.com
  </div>
  >>>>>>> conflict

* Manually merge the changes to the lines, removing those HEAD and >>>> lines.
* add the file, ``git add conflict_in_git.md``
* Merge is still not completed. commit the file, ``git commit -am "resolved the conflict"``
* This should now resolve the conflict and merge the two branches.
* Now you can remove the conflict branch, ``git branch -d conflict``

Setup Gitlab
------------
* Get an access to gitlab. 
* Create a new project. 

.. image:: images/gitlab-project-new.png
   :width: 640px

Setup ssh key
-------------
- Open git bash. 
- type ``ssh-keygen -t rsa -C "christian_amit@cat.com"``.
- If you already ahve id_rsa key, it may ask to overwrite it. 
- Open the file using ``cat ~/.ssh/id_rsa.pub``.
- Copy the key. Paste it in the Gitlab settings as described below. 
(You may have to make key into single line).
(`check this page <http://stackoverflow.com/questions/33302130/gitlab-key-format-issue>`_)

.. image:: images/git-bash.png
   :width: 400px

* In Gitlab, go to settings and ssh key 
`SSH Key setup <https://arlgitgisp03.ecorp.cat.com/profile/keys>`_
* Add a new key. Copy the content of ``id_rsa.pub`` file. 
* If the key is set right, it should add the ssh key. 
It will also send an email to your cat email. 

Git Push with TortoiseGit
-------------------------
- There was an issue when using Push command from TortoiseGit. 
It uses TortoiseGitPlink.exe as the SSH client, 
which uses Putty, which does not work with SSH keys for Gitlab.  
- The work around is to use ``ssh.exe`` without any path. 

.. image:: images/tortoisegit-ssh.png
   :width: 500px

Resources
---------
* `SVN to Git <http://blogs.atlassian.com/2013/01/atlassian-svn-to-git-migration-human-side>`_
* `Git Basics <https://www.atlassian.com/git/tutorial/git-basics>`_
* `Easy Version Control with Git <http://code.tutsplus.com/tutorials/easy-version-control-with-git--net-7449>`_
* `Add Remote repo on network drive <https://gist.github.com/nicholsonjf/9424846>`_
* `Basic Merging and branching <http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging>`_
* `Getting started - First time Git setup <http://git-scm.com/book/en/Getting-Started-First-Time-Git-Setup>`_



