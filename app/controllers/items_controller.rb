class ItemsController < ApplicationController
  def index
    @items = Item.all.order('created_at DESC')
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(params_item)
    if @item.save
      flash[:success] = 'itemを登録しました'
      redirect_to root_url
    else
      flash.now[:danger] = 'itemの登録に失敗しました'
      render :new
    end
  end

  def destroy
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(params_item)
      flash[:success] = 'itemを登録しました'
      redirect_to root_url
    else
      flash.now[:danger] = 'itemの登録に失敗しました'
      render :edit
    end
  end

  private
  
  def params_item
    params.require(:item).permit(:number, :name, :color_1, :color_2, :color_3, :color_4, :size_1, :size_2, :size_3, :size_4, :price)
  end
end
