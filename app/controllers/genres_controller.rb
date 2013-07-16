class GenresController < ApplicationController

  def index
    @genres = Genre.order('name ASC')
  end


  def show
    @genre = Genre.find(params[:id])
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update_attributes(params[:genre])
    redirect_to @genre
  end

  def create
    @genre = Genre.new(params[:genre])
    @genre.save
    redirect_to @genre
  end


  def destroy
    @genre = Genre.find(params[:id])
    @genre.destroy
    redirect_to genres_path
  end

end
