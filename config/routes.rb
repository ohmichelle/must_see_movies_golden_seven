Rails.application.routes.draw do

get("/directors",                { :controller => "directors", :action => "index" })

get("/directors/new_form",       { :controller => "directors", :action => "new_form" })
get("/create_director",          { :controller => "directors", :action => "create_row" })

get("/directors/:id/edit_form",  { :controller => "directors", :action => "edit_form" })
get("/update_director/:id",      { :controller => "directors", :action => "update_row" })

get("/delete_director/:id",      { :controller => "directors", :action => "destroy" })

get("/directors/:id",            { :controller => "directors", :action => "show" })


get("/actors",                { :controller => "actors", :action => "index" })

get("/actors/new_form",       { :controller => "actors", :action => "new_form" })
get("/create_actor",          { :controller => "actors", :action => "create_row" })

get("/actors/:id/edit_form",  { :controller => "actors", :action => "edit_form" })
get("/update_actor/:id",      { :controller => "actors", :action => "update_row" })

get("/delete_actor/:id",      { :controller => "actors", :action => "destroy" })

get("/actors/:id",            { :controller => "actors", :action => "show" })

end
