class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
  end

  def show
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def destroy
    # Parameters: {"id"=>"1"}
    @id = params["id"]
    a = Actor.find(@id) # find Actor
    a.destroy # delete Actor

    redirect_to("http://localhost:3000/actors")
  end

  def new_form
  end

  def create_row
    # Parameters: {"name"=>"", "dob"=>"", "image_url"=>"", "bio"=>""}
    a = Actor.new # create new row for actors table
    a.name = params["name"]
    a.dob = params["dob"]
    a.image_url = params["image_url"]
    a.bio = params["bio"]
    a.save # save

    redirect_to("http://localhost:3000/actors")
  end

  def edit_form
    # Parameters: {"id"=>"1"}
    @id = params["id"]
  end

  def update_row
    # Parameters: {"name"=>"", "dob"=>"", "image_url"=>"", "bio"=>""}
    @id = params["id"]
    a = Actor.find(@id)
    a.name = params["name"]
    a.dob = params["dob"]
    a.image_url = params["image_url"]
    a.bio = params["bio"]
    a.save

    redirect_to("http://localhost:3000/actors/#{@id}")
  end

end
