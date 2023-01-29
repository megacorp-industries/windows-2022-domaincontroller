$password = ConvertTo-SecureString '<PASSWORD>' -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ('<USERNAME>', $password)

Set-Item WSMan:\localhost\Client\allowunencrypted $true
Set-Item WSMan:\localhost\Client\TrustedHosts -Value *

Enter-PSSession -Authentication Basic -Credential $credential '<DC-IP>'
