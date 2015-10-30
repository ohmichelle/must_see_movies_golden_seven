class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
  end

  def show
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def destroy
    # Parameters: {"id"=>"1"}
    @id = params["id"]
    m = Movie.find(@id) # find movie
    m.destroy # delete movie

    redirect_to("http://localhost:3000/movies")
  end

  def new_form
  end

  def create_row
    # Parameters: {"title"=>"", "year"=>"", "image_url"=>"", "description"=>"", "duration"=>""}
    m = Movie.new # create new row for movies table
    m.title = params["title"]
    m.year = params["year"]
    m.duration = params["duration"]
    m.image_url = params["image_url"]
    m.description = params["description"]
    m.save # save

    redirect_to("http://localhost:3000/movies")
  end

  def edit_form
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def update_row
    # Parameters: {"name"=>"", "dob"=>"", "image_url"=>"", "bio"=>""}
    @id = params["id"]
    m = Movie.find(@id)
    m.title = params["title"]
    m.year = params["year"]
    m.duration = params["duration"]
    m.image_url = params["image_url"]
    m.description = params["description"]
    m.save

    redirect_to("http://localhost:3000/movies/#{@id}")
  end

end
