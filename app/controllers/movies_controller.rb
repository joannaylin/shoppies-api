class MoviesController < ApplicationController

  def create
    user = User.find_by(username: movie_params[:username])
    if user.movies.length() == 5
      render json: { error: true }
    else 
      movie = Movie.create!(title: movie_params[:title], year_of_release: movie_params[:year_of_release], imdb_id: movie_params[:imdb_id], user: user)
      render json: movie
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
  end

  def movie_params
    params.require(:movie).permit(:title, :year_of_release, :imdb_id, :username)
  end

end
