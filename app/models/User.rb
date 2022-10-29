class User < ActiveRecord::Base
    has_many :todos

    def all_todos
        self.todos.all
    end
end