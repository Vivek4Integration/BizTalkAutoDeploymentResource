@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
UserName,Password,Description
BizTalkUser,Integrate2022,BizTalk Service User
'@
GroupData = @'
Name,Description,Member
SSO Administrators,SSO Administrators,BizTalkService
SSO Affiliate Administrators,SSO Affiliate Administrators,BizTalkService
BizTalk Server Administrators,BizTalk Server Administrators,BizTalkService
BizTalk Server Operators,BizTalk Server Operators,BizTalkService
BizTalk Application Users,BizTalk Application Users,BizTalkService
BizTalk Isolated Host Users,BizTalk Isolated Host Users,BizTalkService
BAM Portal Users,BAM Portal Users,BizTalkService
BizTalk Server B2B Operators,BizTalk Server B2B Operators,BizTalkService
Domain Admins,Domain Admins,BizTalkService
'@


        

    }
} 
