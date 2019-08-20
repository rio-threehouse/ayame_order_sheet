class ItemsController < ApplicationController
  def index
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
  end

  def update
  end

  private
  
  def params_item
    params.require(:item).permit(:number, :name, :color_1, :color_2, :color_3, :color_4, :size_1, :size_2, :size_3, :size_4, :price)
  end
end
