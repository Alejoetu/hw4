Rails.application.routes.draw do
  get "/", :controller => "marketing_pages", :action => "index"
  resources "places"
  resources "posts"
  resources "sessions"
  resources "users"
  resources "marketing_pages"

  # Login/out
  get "/login", :controller => "sessions", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

  get "/", :controller => "users", :action => "new"

end
