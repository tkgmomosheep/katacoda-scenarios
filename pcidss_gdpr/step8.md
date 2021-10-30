# Requirement 8: Identify and Authenticate Access to System Components
## Requirement 8.5  Change password once every 90 days
1. By default the password in mysql will not expire as shown by value 0
`SHOW VARIABLES LIKE "default_password_lifetime";`{{execute}}
2. PCIDSS require a password change every 90 days, the following command changes it to 90 days
`SET PERSIST default_password_lifetime = 90;`{{execute}}
3. Verify the change
`SHOW VARIABLES LIKE "default_password_lifetime";`{{execute}}

## Requirement 8.6  Limit User Attempts
1. Enable two plugins in order to limit user attempts
`INSTALL PLUGIN CONNECTION_CONTROL SONAME 'connection_control.so';`{{execute}}
`INSTALL PLUGIN CONNECTION_CONTROL_FAILED_LOGIN_ATTEMPTS SONAME 'connection_control.so';`{{execute}}
2. The following command show how many failed attempts will result in login delay, default is 3 attempts
`SHOW STATUS LIKE 'Connection_control_delay_generated';`{{execute}}
3. Open another terminal and attempt 4 times to login with incorrect password
`docker exec -it mysql bash`{{execute}}
`mysql -u root -p`{{execute}}
3. Return to terminal 1 to enter the following command
`SELECT * FROM INFORMATION_SCHEMA.CONNECTION_CONTROL_FAILED_LOGIN_ATTEMPTS;`{{execute}}
4. Observe the output

## Requirement 8.7 Strong passwords with Validation Plugin
1. As the command `mysql_secure_installation` was ran before, MEDIUM password policy should already be in place
2. The following command can be used to verify that
`SHOW VARIABLES LIKE 'validate%';`{{execute}}