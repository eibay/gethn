class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :destroy, :update]

  def index
    @articles = Article.all.where(is_active: true).order('created_at DESC')
    @articles_total = @articles.count
    @fetch_time = Time.now
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
