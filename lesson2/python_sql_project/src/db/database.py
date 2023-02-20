import sqlite3



def create_db():
    try:
        conn = sqlite3.connect('lesson2/python_sql_project/todo.db') # Warning: This file is created in the current directory
        conn.execute("""
        CREATE TABLE todo (
            id INTEGER PRIMARY KEY,
            title TEXT,
            description TEXT);
            """)
        conn.commit()
        print("Create a todo list database...")
        print("Database todo.db created")
    except sqlite3.OperationalError:
        print("Database todo.db conect")


def add_todo(title, description):
    conn = sqlite3.connect('lesson2/python_sql_project/todo.db')
    conn.execute("INSERT INTO todo (title, description) VALUES(?, ?)", (title, description))
    conn.commit()
    conn.close()

def select_todo():
    conn = sqlite3.connect('lesson2/python_sql_project/todo.db')
    res = conn.execute('SELECT * FROM todo')
    return res.fetchall()

