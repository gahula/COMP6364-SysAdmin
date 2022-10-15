$FileName = "C:\Users\DEMO\Desktop\UWI\Week 3\text.txt"
if (Test-Path $FileName) {
    Write-Host "The file text.txt exist."
} 
else 
{
    Write-Host "The file text.txt does not exist."
}