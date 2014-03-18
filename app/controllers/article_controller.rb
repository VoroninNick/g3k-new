class ArticleController < ApplicationController
  def index

  end
  def item
      @article= Article.find_by_url(params[:id])
      @related_articles = Article.where('url != "'+params[:id]+'"').limit(2).order('updated_at desc')
  end
end




