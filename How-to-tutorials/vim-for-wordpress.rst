Using Vim for a Wordpress Blog
===============================

- You can use `VimRepress` plugin to blog from Vim.
- You will need a vim with python support. 
- The python version required is 2.7.9. 
- If you install any other version of python, it will not work. 
- Here is how to use it. 

  * Install Vim from https://tuxproject.de/projects/vim/
  * Install Python 2.7.9. (Search google for this particular version.)
  * Check python installation in vim using, :

    :echo has("python")

- Install VimRepress (or VimBlog), any of these should work for wordpress blog. 
- Create a file called `.vimpressrc` in your user profile directory.
This installation is for windows. So it will be `c:\users\<yourusername>` folder. 
- Add the following information about your wordpress blog. 

.. code-block:: bash

    [Blog0] 
    blog_url =http://yourwebsite.com/
    username =yourusername 
    password =yourpassword

That's it. You can check the blog information using `:BlogList`. It is awesome!