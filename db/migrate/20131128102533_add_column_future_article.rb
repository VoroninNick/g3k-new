class AddColumnFutureArticle < ActiveRecord::Migration
  def change
    add_column :articles, :future_article, :boolean
  end
end
