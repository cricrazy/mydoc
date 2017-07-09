How to Install or Update Choco apps without confirmation
========================================================

- Open command prompt in administrator mode. 
- type the following:

        choco feature enable -n=allowGlobalConfirmation

- To disable auto confirmation:
    
        choco feature disable -n=allowGlobalConfirmation
        
