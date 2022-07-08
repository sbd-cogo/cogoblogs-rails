Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/blogs", to: "blogs#showBlogs"
  get "/blogs/ids/:id", to: "blogs#singleBlog"
  
  put "blogs/edit/:id", to: "blogs#editBlog"
  
  post "/blogs/delete/:id", to: "blogs#deleteBlog"
  post "/blogs", to: "blogs#createBlog"
  
  
  

end
