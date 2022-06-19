class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(params_room)
    if @room.save
      flash[:notice] = "ルーム登録完了しました。"
      redirect_to :rooms
    else
      render "new"
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(params_room)
      flash[:notice] = "登録内容を更新しました。"
      redirect_to :rooms
    else
      render "edit"
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    flash[:notice] = "削除完了しました。"
    redirect_to :rooms
  end

  private
  def params_room
    params.require(:room).permit(:name, :introduction, :price, :address, :image).merge(user_id: current_user.id)
  end
  
end
