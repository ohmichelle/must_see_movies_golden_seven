Rails.application.routes.draw do
get("/directors",                { :controller => "directors", :action => "index" })

get("/directors/new_form",       { :controller => "directors", :action => "new_form" })
get("/create_director",          { :controller => "directors", :action => "create_row" })

get("/directors/:id/edit_form",  { :controller => "directors", :action => "edit_form" })
get("/update_director/:id",      { :controller => "directors", :action => "update_row" })

get("/delete_director/:id",      { :controller => "directors", :action => "destroy" })

get("/directors/:id",            { :controller => "directors", :action => "show" })
end
