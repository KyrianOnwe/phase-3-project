class User < ActiveRecord::Base
    has_many :todos

    def all_todos
        self.todos.all
    end    

    def full_all_todos
        users = User.all
        users.map do |u|
            u.all_todos
        end
    end
end