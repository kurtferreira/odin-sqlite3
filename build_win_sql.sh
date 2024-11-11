#!/bin/sh/

cd libs/sqlite

gcc -DSQLITE_OS_WIN=1 -DSQLITE_THREADSAFE=0 -DSQLITE_OMIT_LOCALTIME=1 -c sqlite3.c
ar rcs libsqlite3.lib sqlite3.o sqlite_lib.o