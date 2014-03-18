class KatalogWrapperController < ApplicationController
  layout 'layout-catalog'
  def katalog_wrapper

  end

  helper_method :get_categories
  def get_categories
    @categories = Category.where(:parent_id => nil)
    return @categories
  end
end
