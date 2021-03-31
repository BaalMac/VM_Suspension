'
====================================
=     Connecting to the Server     =
====================================
'
$configData = ConvertFrom-StringData((Get-Content .\config.ini) -join "`n")
Connect-VIServer -Server $configData.ipaddr -User $configData.user -Password $configData.password

Write-Host '
====================================
=         Server Connected         =
====================================
' -ForegroundColor Yellow

Write-Host "SUSPENDING ALL POWERED ON VIRTUAL MACHINES!" -ForegroundColor Red

$VM_list = @((Get-VM).where{$_.Powerstate -eq 'PoweredOn'} | Select-Object Name)
Suspend-VM -VM $VM_list.Name -Confirm:$false
#Get-VM -Name $VM_list.Name # Test Command.
Write-Host "ALL VIRTUAL MACHINES ARE SUSPENDED OR TURNED OFF!" -ForegroundColor Red
