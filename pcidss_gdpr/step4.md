# Requirement 2: Not Using Vendor Default Passwords and Security Settings
## Requirement 2.4 Disable anonymous accounts and defaults
1. Start a bash shell into the mysql container
`docker exec -it mysql bash`{{execute}}
2. Enter the following command
`mysql_secure_installation`{{execute}}
3. Follow the on-scree prompt to secure the server
The command covers the following requirements:<br>
    ○ Setup of VALIDATE PASSWORD plugin <br>
    ○ Level of password validation policy <br>
    ○ Setting password for root <br>
    ○ Removal of anonymous users <br>
    ○ Revoking remote root logins <br>
    ○ Removal of default schemas and grants for it