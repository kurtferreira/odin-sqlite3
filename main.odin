package thorsql

import "core:fmt"
import "sqlite3"
 
main :: proc () {
    fmt.println("> startup")

    db: sqlite3.sqlite3
    errmsg: cstring    
    
    file: cstring = "file:data.db"

    rc := sqlite3.sqlite3_open(file, &db)
    if rc != .SQLITE_OK {
        msg := sqlite3.sqlite3_errmsg(db)
        fmt.eprintfln("[!] {} ({})", msg, rc)
    } else {
        fmt.printf("Opened DB!")
    }

    sqlite3.sqlite3_close(db)

    fmt.println("< shutdown")
}