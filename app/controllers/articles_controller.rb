class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :search_article, only: [:index]
  autocomplete :article, :title, :full => true
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
  end

  def show
  end

  def new
    @categories = Category.all
    @article = Article.new
  end

  def create
    authorize Article
    @categories = Category.all
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
    authorize @article
  end

  def update
    authorize @article
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit
    end
  end

  def destroy
    authorize @article
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
      @articles = Article.all.paginate(:page => params[:page], :per_page => 5)
    else
      @articles = Article.all.search_by_title(params[:search]).paginate(:page => params[:page], :per_page => 5)
    end
  end
end
