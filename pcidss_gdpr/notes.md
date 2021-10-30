Compliance (PCI DSS/ GDPR)

    PCI DSS
    MySQL Related
    Requirement 2: Not Using Vendor Default Passwords and Security Settings
        One primary function per server only
        Enable only necessary services
        Root accounts password need to be changed when DBAs leave the company
        Disable anonymous accounts and default passwords

    Requirement 3: Protect Stored Cardholder Data
        Mask PAN
        Perform encryption
        Data and key must be stored separately
        Secure cryptographic key distribution and storage

    Requirement 4: Encrypt transmission of cardholder data across open, public networks
        Enable SSL

    Requirement 6: Develop and Maintain Secure Systems and Applications
        Perform backup regularly
        Dev and test env separation
        Remove testing data before moving to production
        No live PANs should be use in testing
        Install critical security patches regularly
            one month of release, low risk patches after two-three months

    Requirement 7: Restrict Access to Cardholder Data by Business Need to Know
        Limit access through column-level grants
        Assign access based on job and function
        Use view to prevent access to restricted columns

    Requirement 8: Identify and Authenticate Access to System Components
        Enable LDAP
        Enable password lifetime policy
        Limit user attempts
        Enable 2FA

    Requirement 10: Track and Monitor Access to Cardholder Data
        Use audit plugin

    GDPR
        Recital 39
            PII (Name, address, phone numbers, race, gender, birthdate)
            Prevent unauthorized access
            Create and enforce roles and permissions
            Create alert to notify breach attempts

        Article 32, Recital 83
            Mask sensitive information
            Maintain integrity if PII

        Article 24
            Provide audit trail of database activity

And maybe mention 
1. why comply with PCI DSS
2. how to identify in-scope network components (so that they can know what are their primary focus when apply controls)
Ah, also mention those requirements that you didn't include in the list (e.g. req 1,5,9), but no need to elaborate them, just tell them what the req is about briefly
wait 😂 last:
You may talk about the rights of data subjects under GDPR