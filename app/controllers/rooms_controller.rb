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
      redirect_to rooms_path
    else
      render "new"
    end
  end

  def edit
  end

  def show
    @room = Room.find(params[:id])
  end

  def update
  end

  def destroy
  end

  def params_room
    params.require(:room).permit(:name,:introduction,:price,:address,:image)
  end
end
