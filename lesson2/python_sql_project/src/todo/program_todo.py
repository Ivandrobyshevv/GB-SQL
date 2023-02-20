from db.database import add_todo, create_db, select_todo

class ToDo:

    def start(self):
        create_db()
        while True:
            print("1 - Insert Todo\n2 - Select Todo\n3 - Exit")
            value = input(">> ")
            if value == '1':
                self.render_todo()
            elif value == "2":
                self.show_todos()
            elif value == "3":
                print("GoodBay!")
                break
            else:
                continue
    
    def render_todo(self):
        title = input("Please, write a title: ")
        print("Please, write a description")
        description = input(">> ")
        add_todo(title, description)
        print("Successfully added")
    
    def show_todos(self):
        todos = select_todo()
        for todo_id, todo_name, todo_description in todos:
            print(f'id: {todo_id}\ntitle: {todo_name}\ndesc: {todo_description}')