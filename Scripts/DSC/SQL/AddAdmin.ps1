Configuration AddDomainAdminGroupToSQL
{
    param
    (
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SqlAdministratorCredential

      
    )

    Import-DscResource -ModuleName 'SqlServerDsc'



        SqlLogin 'Add_WindowsGroup'
        {
            Ensure               = 'Present'
            Name                 = 'BizTalkTest\Domain Admins'
            LoginType            = 'WindowsGroup'
            ServerName           = 'TestDB'
            InstanceName         = 'DSC'
            PsDscRunAsCredential = $SqlAdministratorCredential
        }
        

     
    }
}