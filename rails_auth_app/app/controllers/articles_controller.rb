class ArticlesController < ApplicationController
  def index
  	@article = Article.all
  	render :index
  end

  def show
  	@article = Article.find(params[:id])
  	@keywordResults = @article.make_request
  	render :show
  end

  def new
  	@article = Article.new
  	render :new
  end

  def create
  	newArticle = params.require(:article).permit(:title, :author, :content)
    article = Article.create(newArticle)
    redirect_to_blog_path(blog.id)
end

  def edit
  	@article = Article.find(params[:id])
  	render :edit
  end

  def update
    blog = Blog.find(params[:id])
    blog_params = params.require(:blog).permit(:title, :author, :content)
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end


  def destroy
    blog = Blog.find(params[:id])
    blog.destroy
    redirect_to blogs_path
  end
end
