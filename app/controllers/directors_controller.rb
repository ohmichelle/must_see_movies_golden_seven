class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
  end

  def show
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def destroy
    # Parameters: {"id"=>"1"}
    @id = params["id"]
    d = Director.find(@id) # find director
    d.destroy # delete director

    redirect_to("http://localhost:3000/directors")
  end

  def new_form
  end

  def create_row
    # Parameters: {"name"=>"", "dob"=>"", "image_url"=>"", "bio"=>""}
    d = Director.new # create new row for directors table
    d.name = params["name"]
    d.dob = params["dob"]
    d.image_url = params["image_url"]
    d.bio = params["bio"]
    d.save # save

    redirect_to("http://localhost:3000/directors")
  end

  def edit_form
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def update_row
    # Parameters: {"name"=>"", "dob"=>"", "image_url"=>"", "bio"=>""}
    @id = params["id"]
    d = Director.find(@id)
    d.name = params["name"]
    d.dob = params["dob"]
    d.image_url = params["image_url"]
    d.bio = params["bio"]
    d.save

    redirect_to("http://localhost:3000/directors/#{@id}")
  end

end
