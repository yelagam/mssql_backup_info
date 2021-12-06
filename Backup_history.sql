select database_name, backup_start_date, backup_finish_date, 
DATEDIFF(Minute, backup_start_date, backup_finish_date) as Duration
, type,
CAST(backup_size/1048576 AS DECIMAL (10,2)) AS BackupsizeMB,
user_name,
B.physical_device_name,
is_copy_only
from msdb..backupmediafamily B
Inner join msdb..backupset S on B.media_set_id = S.media_set_id 
--where S.type = 'D'and -- backup type
--s.database_name = 'DB_name' --- mention db name
order by s.backup_finish_date desc