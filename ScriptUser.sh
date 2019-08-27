ORACLE_SID=cdb1; export ORACLE_SID
env
sqlplus / as sysdba <<EOF
set heading off feedback off verify off
SELECT * FROM ALL_USERS;
exit
EOF



