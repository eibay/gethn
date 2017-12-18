class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order('created_at DESC')
    @articles_total = @articles.count
    @fetch_time = Time.now
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to root_path
  end

end
