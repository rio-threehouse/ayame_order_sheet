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
    item
    item.destroy
    flash[:danger] = 'itemを削除しました'
    redirect_to root_url
  end

  def edit
    item
  end

  def update
    item
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

  def item
    @item = Item.find(params[:id])
  end
end
