Configuration AddDomainAdminGroupToSQL
{
    param
    (
        [Parameter(Mandatory = $true)]
        [System.Management.Automation.PSCredential]
        $SqlAdministratorCredential

      
    )

    Import-DscResource -ModuleName 'SqlServerDsc'

    node localhost
    {
        

        SqlLogin 'Add_WindowsGroup'
        {
            Ensure               = 'Present'
            Name                 = 'BizTalkTest\Domain Admins'
            LoginType            = 'WindowsGroup'
            ServerName           = 'TestDB'
            InstanceName         = 'DSC'
            PsDscRunAsCredential = $SqlAdministratorCredential
        }
        SqlRole 'Add_ServerRole_AdminSql'
        {
            Ensure               = 'Present'
            ServerRoleName       = 'sysadmin'
            Members              = 'BizTalkTest\Domain Admins'
            ServerName           = 'TestDB'
            InstanceName         = 'DSC'

            PsDscRunAsCredential = $SqlAdministratorCredential
            DependsOn = "[SqlLogin]Add_WindowsGroup"
        }

     
    }
}