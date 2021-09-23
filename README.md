# DevOps
Danil Ignatushkin 
- Task 2
1. cat /etc/passwd
- cat /etc/group
2. UID
- id danil
- id nikita
- UID - представление юзера в ядре
3. GID - group id
- groups danil
4. groups nikita
 also when id nikita print UID and GID
5. Add user
- adduser <username>
- check user: grep '^username' /etc/passwd
Parametrs: username and password, also we can more information like Full name,email etc.
6. Change username
- usermod -l newnikita nikita
- before need kill all process with this user
- sudo pkill -9 -u nikita
- sudo pkill -u nikita
7. -
8. Delete user
- userdel nikita
9. Block user
- passwd -l newuser
- check status: passwd -S newuser
- L - lock, P - password, N -without password
- unblock user: passwd -u newuser
10. user without password
- passwd -d newuser
11. all files
- ls -la
12. Files
1. Owner, Group, Other
- r - read
- w - writing
- x - using
- nothing
13. First three parametrs in sequence
14. Change owner and mode
- change mode: chmod 622 example.txt
- change owner: chown danil:sudo example.txt
15. umask -S
16. On SUID: chmod u+s example.txt
    On GUID: chmod g+s example.txt
17. 
- nano myscript.script
- """!#/bin/bash
- mkdir testDir
- cd testDir
- echo "Hello everyone!" > wisit.txt"""
- command to start script: source myscript.script

