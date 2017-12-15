class ArticlesController < ApplicationController

def index
  @articles = Article.all
end

def edit
end

end
