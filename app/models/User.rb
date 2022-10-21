class User < ActiveRecord::Base
    has_many :todos

    def show_todos
        self.todos.all
    end
end