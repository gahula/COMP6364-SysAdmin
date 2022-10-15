$FileName = "C:\Users\DEMO\Desktop\UWI\Week 3\directorylist.txt"
if (Test-Path $FileName) {
    "The file directorylist.txt exist." | Out-File -FilePath "C:\Users\DEMO\Desktop\UWI\Week 3\log.txt"
} 
else 
{
    "The file directorylist.txt does not exist." | Out-File -FilePath "C:\Users\DEMO\Desktop\UWI\Week 3\log.txt"
}