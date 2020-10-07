class UserController < ApplicationController

    # get "/" do
    #     erb :welcome
    # end

    # get "/users" do 
    #     binding.pry
    #     @users = User.all_except(current_user)
    #     @posts = Post.all
    #     erb :"users/index"
    # end

    # get '/users/:id' do 
    #     binding.pry
    #     @user = User.find_by(params[:id])
    
    #     erb :"users/show"
    # end
    get '/users' do 
        erb :"users/show"
    end

    get '/users/signup' do 
        erb :"users/signup"
    end

    post '/users' do 
        binding.pry
        @user = User.new(params)

        if @user && @user.save 
            session[:user_id] = @user.id
            redirect "/posts"
        else  
            erb :"users/signup"
        end
    end

    get '/users/:id/edit' do
        redirect_if_not_logged_in
        erb :"users/edit" 
    end

    patch '/users/:id' do
        params.delete("_method")
        current_user.update(params)
        erb :"users/show"
    end
end 