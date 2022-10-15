$SmtpServer = 'smtp.office365.com'
$SmtpUser = '***.***@outlook.com'
$smtpPassword = '****'
$MailtTo = '***.***@gmail.com'
$MailFrom = '***.***@outlook.com'
$MailSubject = "Dwayne Lab 2 Windows - Log.txt Notification" 
$Attachment = "C:\Users\DEMO\Desktop\UWI\Week 3\log.txt"
$Body = Get-Content "C:\Users\DEMO\Desktop\UWI\Week 3\log.txt"
$Credentials = New-Object System.Management.Automation.PSCredential -ArgumentList $SmtpUser, $($smtpPassword | ConvertTo-SecureString -AsPlainText -Force) 

Send-MailMessage -To "$MailtTo" -From "$MailFrom" -Subject $MailSubject -SmtpServer $SmtpServer -UseSsl -Credential $Credentials -Body $Body -Attachments $Attachment -Priority High  -DeliveryNotificationOption OnSuccess, OnFailure
