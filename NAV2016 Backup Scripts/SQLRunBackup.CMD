del "C:\DBbackup\Backups\MAD_UAT\*.BAK"

sqlcmd -S NAV2016n\NAV -i"C:\DBbackup\Backup Scripts\SQLBackupScript.sql" -v DB="MAD_UAT" -v BACKUPFOLDER="C:\DBbackup\Backups" -v DBRETAINUNIT="days" -v DBRETAINVAL="1"

xcopy "C:\DBbackup\Backups\MAD_UAT\*.BAK" "Z:\NAV2016 Daily SQL backup"

