class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new params.require(:movie).permit(:title, :photo)
    if @movie.save
      redirect_to root_path
    else
      render :new
    end
  end
end
