# mssql_backup_info
backup history information
this is a simple query to collect backup information on mssql server
DB_name in the script can be replaced with a specific database name to pull information for a specific database or commented clause will pull all databases backup information.
S.type = 'D' -- "D" represents full backup  and can be replaced with "i" for incremental/ differencial and "L" for t-log backup
