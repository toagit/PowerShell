@echo off
cd /d %~dp0
powershell -NoProfile -ExecutionPolicy Unrestricted .\FileOrganizer.ps1

pause > nul