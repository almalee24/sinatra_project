require 'pry'
class SessionsController < ApplicationController 

    get "/login" do 
        erb :"sessions/login"
    end

    post "/login" do 
        binding.pry
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id 
            redirect '/posts'
        else 
            redirect '/login'
        end
        
    end

end