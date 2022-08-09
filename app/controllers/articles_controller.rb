class ArticlesController < ApplicationController

  # Read all
  def index
    @articles = Article.all
  end

  # read one
  def show
    @article = Article.find(params[:id])
  end

  # CREATE

  def new
    # Save the instance of Article in a instance variable named article
    @article = Article.new
  end


  def create
    @article = Article.new(article_params)
    @article.save
    # Redirect coz no view for create, the post shld redirect to the created article individual page (show)
    redirect_to article_path(@article)
  end

  # EDIT
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    # redirect
    redirect_to article_path(@article)
  end

  # DELETE
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    # redirect
    redirect_to articles_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end

end
