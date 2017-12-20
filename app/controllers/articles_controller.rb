class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :destroy, :update]

  def index
    @articles = Article.all.where(is_active: true).order('created_at DESC')
    @articles_total = @articles.count
    articles_remove = Article.all.where(is_active: false).order('created_at DESC')
    @articles_remove_count = articles_remove.count
  end

  def show
  end

  def destroy
    @article.destroy
    redirect_to root_path
  end

  def update
    @article.is_active = false
    @article.save
    redirect_to root_path
  end

  private
  def set_article()
    @article = Article.find(params[:id])
  end

end
