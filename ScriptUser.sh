ORACLE_SID=cdb1; export ORACLE_SID
env
sqlplus / as sysdba <<EOF
set heading off feedback off verify off
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE USER usuario IDENTIFIED BY admin;
GRANT CONNECT TO milena;
GRANT CONNECT, RESOURCE, DBA TO milena;
exit
EOF


