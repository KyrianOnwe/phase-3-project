class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'


  get "/users" do
    users = User.all
    users.to_json(inlude: :user)
  end 

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json(include: :todos)
  end 

  get "/todos" do
    todos = Todo.all
    todos.to_json(inlude: :user)
  end

  get "/todos/:id" do
    todos = Todo.find(params[:id])
    todos.to_json(inlude: :user)
  end

  post "/todos" do
    user = User.find_by(name: params[:user_id])
    new_todo = Todo.create(
      task: params[:task],
      due_date: params[:due_date],
      assigned_by: params[:assigned_by],
      completed: params[:completed],     
      status: params[:status],      
      user_id: user.id
    )
    new_todo.to_json
  end

  patch "/todos/completed/:id" do
    upd = Todo.find(params[:id])
    upd.update(completed: params[:completed])
    upd.update(status: params[:status])
    upd.to_json(include: :user)
  end  

  delete "/todos/:id" do
    del = Todo.find(params[:id])
    del.destroy
    del.to_json
  end

  get "/users/get_user_todos/:id" do
    usr = User.find(params[:id])
    usr.to_json(include: :todos)
        
  end

  post "/users/post" do
    new_user = User.create(
      name: params[:name],
      email: params[:email],
      role: params[:role],
      password: params[:password]
    )
    new_user.to_json(include: :todos)
  end
end
