class SessionsController < ApplicationController

  def create
    if params[:name].nil? || params[:name] == ''
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/index'
    end
  end

  def destroy
    if session[:name]
      sesssion.delete :name
    end
  end
end
