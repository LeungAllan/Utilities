exec expressmaint   
@database      = 'MAD_UAT',   
@optype        = 'DB',   
@backupfldr    = 'C:\DBbackup\Backups',   
@reportfldr    = 'C:\DBbackup\Reports',   
@verify        = 1,   
@dbretainunit  = 'days',   
@dbretainval   = 1,   
@rptretainunit = 'weeks',   
@rptretainval  = 1,   
@report        = 1