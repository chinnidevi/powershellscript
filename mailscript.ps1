$MyEmail = "chinnnidevarapu@gmail.com"
$SMTP = "smtp.gmail.com"
$To = "patnanamanikanta96@gmail.com"
$Attachment = "F:\outputscreenshots\mailscript.ps1"
$Subject = "My first mail"
$Body = "hiii"
$Creds = (Get-Credential -Credential "$MyEmail")
Start-Sleep 2 

#$SMTPServer = "smtp.gmail.com"
#$SMTPPort = "587"

Send-MailMessage -To $To -From $MyEmail -Subject $Subject -Body $Body -Attachments $Attachment -SmtpServer $SMTP -Credential $Creds -UseSsl -port 587 –DeliveryNotificationOption never
