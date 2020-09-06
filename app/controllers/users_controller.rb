class UsersController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if !user
      user = User.create!(username: params[:username])
    end
    render json: user
  end

  def show
    user = User.find_by(username: params[:username])
    render json: { user: user, movies: user.movies}
  end

end
