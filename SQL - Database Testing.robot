*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         prezentacija
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
_TC_Prezentacija_1
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _between_91_95()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

_TC_Prezentacija_2
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _order_by_date()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

_TC_Prezentacija_3
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _order_by_title()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

_TC_Prezentacija_4
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _select_93()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END
