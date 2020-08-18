import sqlite3
connection = sqlite3.connect('ivycpg_v22.sqlite')
cursor = connection.cursor()
cursor.execute("SELECT name FROM sqlite_master WHERE type='table';")
tableCount = cursor.fetchall()

for i in tableCount :
    cursor.execute("SELECT COUNT(*) FROM pragma_table_info(?) WHERE name = ?",(i[0], "IsActive1",))
    ClmCount = cursor.fetchall()
    if ClmCount[0][0] == 0:
        print(i[0])
        alterCommand = "ALTER TABLE "+i[0]+" ADD COLUMN IsActive1 BOOL DEFAULT 1"
        cursor.execute(alterCommand)
        connection.commit()
