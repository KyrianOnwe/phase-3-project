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

end
