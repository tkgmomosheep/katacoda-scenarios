# Requirement 4: Encrypt transmission of cardholder data across open, public networks
1. Observe the current connection status
`\s`{{execute}}
2. Terminate current session to mysql
`exit`{{execute}}
3. Reconnect with the following command
`mysql --padmin -h 127.0.0.1 -u root`
4. Observe the current connection status
`\s`{{execute}}
5. Notice that the SSL column will state the current connection is SSL enabled or not
6. Users can be required to use SSL to connect to the database by using the following command
`CREATE USER 'jeffrey'@'localhost' REQUIRE SSL;`