class KatalogController < KatalogWrapperController


  # GET /categories/1
  # GET /categories/1.json
  def show

    @category = Category.find_by_category_url(params[:category_name])
    @subcategories = Category.find_by_category_url(params[:category_name]).child_categories

    if @category.parent
      render :template => 'katalog/subcatalog/show', :locals =>  { :category =>@category }
    else

    end
    @all_items_from_current_catalog = @category.products.order('updated_at desc')

  end

  def katalog
    @title = "КАТАЛОГ"
    @categories = Category.where(:parent_id => nil)
    @product = Product.order('updated_at desc').limit(6)
  end
  def show_product
    @product = Product.find_by_product_url(params[:id])
    @similar_products = Product.where('product_url != "'+params[:id]+'" and category_id=' + @product.category_id.to_s).order('updated_at desc')
    render :template => 'katalog/item/show_product'
  end
  layout :application
  def add_product_to_cart
    @title = "G3K - ІГРИ НОВОГО ПОКОЛІННЯ"
    @articles = Article.order('updated_at desc').limit(4)
    @product = Product.order('updated_at desc').limit(4)

    #@product_buy = Product.find_by_product_url(params[:id])
    #if @product_buy
      #render :inline => request.headers['HTTP_REFERER'].split('/').inspect
      #url_array = request.headers['HTTP_REFERER'].split('/')
      #url_array.remove('http:','')
      #if request.headers['HTTP_REFERER']
       #render :template => 'home/index',:layout => 'application'

    #end
  end
end
