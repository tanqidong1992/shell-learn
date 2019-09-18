#!/bin/bash
javaHomeName="JAVA_HOME"
echo first argument ${0}
echo env JAVA_HOME is ${!javaHomeName} 
echo javaHomeName is $javaHomeName
test -e /bin/cp && echo "the command $_ is found." || echo "the command $_ is not found."

export DATABASE='db1,db2,db3,db4'
dbs="$(echo "$DATABASE" | tr ',' ' ')"

for db in $dbs
do
echo a db :$db
done

#show path
echo $PATH
paths="$(echo $PATH | tr ':' ' ')"
for p in $paths
do
echo path: $p
done