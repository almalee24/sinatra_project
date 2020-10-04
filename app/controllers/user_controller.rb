class UserController < ApplicationController

    get "/" do
        erb :welcome
    end

    get "/users" do 
        binding.pry
        @users = User.all
        @posts = Post.all
        erb :"users/index"
    end

    get '/users/:id' do 
        @user = User.find_by(params[:id])
    
        erb :"users/show"
    end
end 