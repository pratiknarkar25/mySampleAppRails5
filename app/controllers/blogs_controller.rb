class BlogsController < ApplicationController
	before_action :set_blog, only: [:show, :edit, :update, :destroy]

	def index
		@blogs = Blog.all.decorate  # Also you can use : BlogDecorator.decorate_collection(Blog.all)
	end

	def show
		@blog = Blog.find(params[:id])
	end
	
	def edit
	end

	def new
		@blog = Blog.new.decorate
	end

	def create
		@blog = Blog.new(blog_params).decorate
		
		respond_to do |format|
			if @blog.save
				format.html { redirect_to @blog, notice: 'Successfully created a new blog'}
				format.json { render :show, status: :created }
			else
				format.html { render :new}
				format.json { render json: @blog.errors, status: :unprocessible_entity }
			end
		end
	end

	def update
		respond_to do |format|
			if @blog.update(blog_params)
				format.html { redirect_to @blog, notice: 'Successfully updated a blog' }
				format.json { render :show, status: :ok }
			else
				format.html { render :edit }
				format.json { render json: @blog.errors, status: :unprocessible_entity }
			end
		end
	end
	
	def destroy
		@blog.destroy
		respond_to do |format|
			format.html { redirect_to blogs_url, notice: 'Successfully deleted a blog' }
			format.json { head :no_content }
		end
	end

private
	def set_blog
		@blog = Blog.find(params[:id]).decorate
	end

	def blog_params
		params.require(:blog).permit(:title, :text, :created_at, :updated_at)
	end

end
