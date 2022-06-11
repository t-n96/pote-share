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
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(params_room)
      redirect_to :rooms
    else
      render "edit"
    end
  end

  def destroy
  end

  private
  def params_room
    params.require(:room).permit(:name, :introduction, :price, :address, :image).merge(user_id: current_user.id)
  end
  
end
