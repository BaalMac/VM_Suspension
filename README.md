# VM_Suspension
> A powershell script for VMware PowerCLI to suspend all VMs in an emergency event.

**Please install VMwarePowerCLI in powershell before running script!**

## Setup
Here is a link to install [PowerCLI in powershell](https://thesysadminchannel.com/install-vmware-powercli-module-powershell/)

## Usage
**Please change config.ini to your server credentials**

In my situation I have a CyberPower UPS hooked up to a Raspberry Pi via USB running [PowerPanel Personal Linux](https://www.cyberpowersystems.com/product/software/power-panel-personal/powerpanel-for-linux/). All you do is paste the script inside pwstatd-powerfail.sh or pwstatd-lowbattery.sh

```
powershell E-Suspend.ps1
```
