class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/users" do
    users = User.all
    users.to_json
  end 

  get "/users/:id" do
    users = User.find(params[:id])
    users.to_json
  end 

  get "/todos" do
    todos = Todo.all
    todos.to_json
  end

  get "/todos/:id" do
    todos = Todo.find(params[:id])
    todos.to_json
  end

  post "/todos" do
    new_todo = Todo.create(
      task: params[:task],
      due_date: params[:due_date],
      assigned_by: params[:assigned_by],
      completed: params[:completed],     
      status: params[:status],      
      user_id: params[:user_id]
    )
    new_todo.to_json
  end

  patch "/todos/:id" do
    upd = Todo.find(params[:id])
    upd.update(
      user_id: params[:user_id]
    )
    upd.to_json
  end

  patch "/todos/status/:id" do
    upd = Todo.find(params[:id])
    upd.update(
      status: params[:status]
    )
    upd.to_json
  end

  delete "/todos/:id" do
    del = Todo.find(params[:id])
    del.destroy
    del.to_json
  end

  patch "/todos/completed/:id" do
    upd = Todo.find(params[:id])
    upd.update(completed: params[:completed])
    upd.update(status: params[:status])
    upd.to_json
  end

  get "/find_by_name/:name" do
    usr = User.find_by_name(params[:name])
    thedos = usr.show_todos
    thedos.to_json
  end

  post "/users" do
    new_user = User.create(
      name: params[:name],
      email: params[:email],
      role: params[:role],
      password: params[:password]
    )
    new_user.to_json
  end
end
