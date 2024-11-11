#include "./sqlite/sqlite3.h"

// Some basic definitions for sqlite3 static binding

int sqlite3_os_init(void) { 
    return SQLITE_OK; 
}
int sqlite3_os_end(void) { 
    return SQLITE_OK; 
}