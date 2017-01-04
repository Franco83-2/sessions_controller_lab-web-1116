require 'pry-rails'
class SessionsController < ApplicationController
  def new
  end

  def index
  end

  def create
    if params[:name] == nil || params[:name] == ""
      redirect_to action: 'new'
    else
      session[:name] = params[:name]
      redirect_to action: 'index'
    end
  end

  def destroy
    session[:name] = nil
  end

end
