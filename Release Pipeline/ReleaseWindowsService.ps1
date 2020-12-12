#Use the powershell task 
#Stop Windows Service
Get-Service -ComputerName $(ComputerName) -Name $(WindowsServiceName)  | Stop-Service

#Use the Command line task 
#Uninstall Windwos Service
winrs -r:$(ComputerName) D:\WindowService\$(ToolFolder_Schedule)\$(Application Name).exe uninstall  -username $(service.account) -password $(service.pwd) -env:$(PRO.Configuration)

#use Copy file task to copy new application to Destination

#Use the Command line task 
#install Windwos Service
winrs -r:$(ComputerName) D:\WindowService\$(ToolFolder_Schedule)\$(Application Name).exe install  -username $(service.account) -password $(service.pwd) -env:$(PRO.Configuration)

#Use the powershell task 
#Start Windows Service
Get-Service -ComputerName $(ComputerName) -Name $(WindowsServiceName)  | Start-Service


