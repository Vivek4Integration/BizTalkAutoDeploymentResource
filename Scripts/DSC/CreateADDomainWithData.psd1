@{ 
    AllNodes = @( 
        @{ 
            Nodename = 'localhost'
            PSDscAllowDomainUser = $true
        }
    )

    NonNodeData = @{

        UserData = @'
        { 
            "UserName": "BizTalkService",
            "Password": "Allscripts#1",
            "Description": "BizTalk Service User"
         }
'@
GroupData = @'
[
  {
    "Name": "SSO Administrators",
    "Description": "SSO Administrators",
    "Member": "BizTalkService"
  },
  {
    "Name": "SSO Affiliate Administrators",       
    "Description": "SSO Affiliate Administrators",
    "Member": "BizTalkService"
  },
  {
    "Name": "BizTalk Server Administrators",
    "Description": "BizTalk Server Administrators",
    "Member": "BizTalkService"
  },
  {
    "Name": "BizTalk Server Operators",
    "Description": "BizTalk Server Operators",
    "Member": "BizTalkService"
  },
  {
    "Name": "BizTalk Application Users",
    "Description": "BizTalk Application Users",
    "Member": "BizTalkService"
  },
  {
    "Name": "BizTalk Isolated Host Users",
    "Description": "BizTalk Isolated Host Users",
    "Member": "BizTalkService"
  },
  {
    "Name": "BAM Portal Users",
    "Description": "BAM Portal Users",
    "Member": "BizTalkService"
  },
  {
    "Name": "BizTalk Server B2B Operators",
    "Description": "BizTalk Server B2B Operators",
    "Member": "BizTalkService"
  },
  {
    "Name": "Domain Admins",
    "Description": "Domain Admins",
    "Member": "BizTalkService"
  }
]
'@


        

    }
} 
