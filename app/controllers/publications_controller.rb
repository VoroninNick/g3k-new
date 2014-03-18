class PublicationsController < ApplicationController
  def publications
    @articles = Article.order('updated_at desc')
    @future_articles = Article.order('updated_at desc').limit(3)
  end
end
