# PCI-DSS requirements
## Non-database related requirements
### Requirement 1: Install and maintain a firewall configuration to protect cardholder data
 - A firewall can restrict inbound and outbound traffic to only necessary ones to protect cardholder data
 - For example iptables on debian

### Requirement 5: Protect all systems against malware and regularly update antivirus software or programs
 - Using a anti-virus software can lower the risk of mclicious software attack
 - For instance clamav-daemon on debian

### Requirement 9: Restrict physical access to cardholder data
 - Prevent unauthorized access to media that contains cardholder data
 - Media is both paper and electronic media.

### Requirement 11: Regularly test security systems and processes
 - Vulnerability scanning and penetration testing can be performed

### Requirement 12: Maintain a policy that addresses information security for all personal
 - Auditd and acct can be used to keep audit trails and keep account related information
