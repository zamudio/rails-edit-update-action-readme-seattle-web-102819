class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id]) # make helper method under private?
  end

  def update
    @article = Article.find(params[:id]) # make helper method under private?
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end
end
