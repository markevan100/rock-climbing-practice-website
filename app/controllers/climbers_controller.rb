class ClimbersController < ApplicationController
  before_action :set_climber, only: [:edit, :update, :show, :destroy]

  def index
    @climbers = Climber.all
  end

  def new
    @climber = Climber.new
  end

  def edit
  end

  def create
    @climber = Climber.new(climber_params)

    if @climber.save
      flash[:notice] = "Climber was saved successfully."
      redirect_to climbers_path
    else
      render :new
    end
  end

  def update
    if @climber.update(climber_params)
      flash[:notice] = "Climber was saved successfully."
      redirect_to climber_path(@climber)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @climber.destroy
    flash[:notice] = "Climber was successfully deleted."
    redirect_to climbers_path
  end

  private
  def climber_params
    params.require(:climber).permit(:name, :year, :award_1, :award_2, :award_3)
  end

  def set_climber
    @climber = Climber.find(params[:id])
  end

end
