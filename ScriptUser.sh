ORACLE_SID=cdb1; export ORACLE_SID
env
sqlplus / as sysdba <<EOF
set heading off feedback off verify off
ALTER SESSION SET "_ORACLE_SCRIPT"=true;
CREATE USER agente IDENTIFIED BY admin;
GRANT CONNECT TO agente;
GRANT CONNECT, RESOURCE, DBA TO agente;
exit
EOF





