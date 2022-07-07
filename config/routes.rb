Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs", to: "blogs#showBlogs"
  get "/blogs/:blog_id", to: "blogs#singleBlog"

  post "/blogs", to: "blogs#createBlog"

end
