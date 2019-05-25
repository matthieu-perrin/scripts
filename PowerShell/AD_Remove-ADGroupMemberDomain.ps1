

function Remove-ADGroupMemberDomain()
{
    Param ($user, $group)
    
    $userdomain = $user.Split('\')[0]
    $username = $user.Split('\')[1]
    $user_domain = $(Get-ADDomain $userdomain).DNSRoot

    $groupdomain = $group.Split('\')[0]
    $groupname = $group.Split('\')[1]
    $group_domain = $(Get-ADDomain $groupdomain).DNSRoot
    
    # Get User ID and Group ID
    $User  = Get-ADUser -Filter "Name -eq '$username'" -Server "$user_domain"
    $Group = Get-ADGroup -Filter "Name -eq '$groupname'" -Server "$group_domain"
    $sid = $User.SID.Value
    $ForeignSecurityPrincipals = $(Get-ADDomain $group_domain).ForeignSecurityPrincipalsContainer
    $member= "CN=" + "$sid" + "," + $ForeignSecurityPrincipals

    # Get domain controler adress
    $dc = $(Get-ADDomainController -Discover -DomainName $group_domain).HostName

    # Remove user from group
    if (( $sid ) -and ( $Group )) 
    {
        Set-ADObject -Identity $($Group.DistinguishedName) -Remove @{member="$member"} -Server $dc.Value
    }

}

 # Remove-ADGroupMemberDomain -user "SDMN01\HL5774" -group "CORP\CSI TFS WebSouscription Readers"
