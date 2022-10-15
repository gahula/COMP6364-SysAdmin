$FileName = "C:\Users\DEMO\Desktop\UWI\Week 3\text.txt"
Remove-Item $FileName
if (Test-Path $FileName) {
    Write-Host "The file text.txt exist."
} 
else 
{
    Write-Host "The file text.txt does not exist."
}