variable "vm_os_simple" {
  default = ""
}

# Definition of the standard OS with "SimpleName" = "publisher,offer,sku"
variable "standard_os" {
  default = {
    "UbuntuServer"  = "Canonical,0001-com-ubuntu-server-focal,20_04-lts"
    "WindowsServer" = "MicrosoftWindowsServer,WindowsServer,2016-Datacenter"
    "RHEL"          = "RedHat,RHEL,7.5"
    "openSUSE-Leap" = "SUSE,openSUSE-Leap,42.2"
    "CentOS"        = "OpenLogic,CentOS,7.6"
    "Debian"        = "credativ,Debian,8"
    "CoreOS"        = "CoreOS,CoreOS,Stable"
    "SLES"          = "SUSE,SLES,12-SP2"
  }
}
