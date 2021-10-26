xcopy "C:\DBbackup\Backups\MAD_UAT\*.BAK" "M:\ERP Project\DB-backup\NAV2016Backup"

del "C:\DBbackup\Backups\MAD_UAT\*.BAK"

sqlcmd -S NAV2016n\NAV -i"C:\DBbackup\Backup Scripts\SQLBackupScript.sql" -v DB="MAD_UAT" -v BACKUPFOLDER="C:\DBbackup\Backups" -v DBRETAINUNIT="days" -v DBRETAINVAL="1"