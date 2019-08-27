ORACLE_SID=cdb1; export ORACLE_SID
env
sqlplus / as sysdba <<EOF
set heading off feedback off verify off
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE USER agente4 IDENTIFIED BY admin;
GRANT CONNECT TO agente4;
GRANT CONNECT, RESOURCE, DBA TO agente4;
Select * from all_users;
exit
EOF





