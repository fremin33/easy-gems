class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :search_article, only: [:index]

  def index

  end

  def show
  end

  def new
    @categories = Category.all
    @article = Article.new
  end

  def create
    @categories = Category.all
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :description, :picture, :category_id, :preface, :bootsy_image_gallery_id)
  end

  def set_article
    @article = Article.find(params[:id])
  end

  def search_article
    if params[:search].blank?
      @articles = Article.all
    else
      @articles = Article.search_by_title(params[:search])
    end
  end
end
