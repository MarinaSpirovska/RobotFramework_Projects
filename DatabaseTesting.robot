*** Settings ***
Library           DatabaseLibrary

*** Variables ***
${dbname}         spirovska
${dbuser}         root
${dbpasswd}       ${EMPTY}
${dbhost}         localhost
${dbport}         3306
@{queryResults}

*** Test Cases ***
TC1
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    SELECT * FROM marki
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC2_select_marki_sp
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    @{queryResults}    Query    CALL _select_marki()
    FOR    ${row}    IN    @{queryResults}
        Log    ${row}
    END

TC_insert_marki
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    INSERT INTO marki (marki_name,country,eu) values('AUDI','H',1)

TC_marki_bycountry
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    SELECT * FROM marki WHERE country like 'JAP'

TC_country_like
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    SELECT * FROM marki WHERE country LIKE 'JAP' or country LIKE 'USA'

TC_country_likeeu
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    SELECT * FROM marki WHERE EU='1'

TC_order_by_desc
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    SELECT * FROM marki ORDER BY marki_name DESC    @{queryResults}

TC_modeli
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli WHERE modeli_name like 'A%'

TC_modeli_cena_boja
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli WHERE color LIKE 'red' and price>=1000

TC_modeli_ceni
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli WHERE price BETWEEN 3000 and 6000

TC_selectmodeli
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli ORDER BY price ASC

TC_modeli_najskapo
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli ORDER BY price ASC limit 1

TC_modeli_najevtino
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    modeli
    Execute Sql String    SELECT * FROM modeli ORDER BY price DESC limit 1

TC_11
    Connect To Database    pymysql    ${dbname}    ${dbuser}    ${dbpasswd}    ${dbhost}    ${dbport}
    Table Must Exist    marki
    Execute Sql String    INSERT INTO marki (marki_name,country,eu) values('AUDI','H',1)
