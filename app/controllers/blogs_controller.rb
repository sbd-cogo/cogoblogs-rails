class BlogsController < ApplicationController
    protect_from_forgery with: :null_session
    def showBlogs
        my_blogs = Blogs.all
        render json: my_blogs
    end

    def singleBlog
        blog = Blogs.find(params[:blog_id])
        render json: blog
    end

    def createBlog
        new_blog = Blogs.new(
            blog_title: params[:blog_title],
            blog_desc: params[:blog_desc],
            blog_content: params[:blog_content],
            blog_type: params[:blog_type]
        )
        new_blog.save
        render json: new_blog
    end
end
