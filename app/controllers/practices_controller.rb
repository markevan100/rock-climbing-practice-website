class PracticesController < ApplicationController
  before_action :set_practice, only: [:edit, :update, :show, :destroy]

  def index
    @practices = Practice.all
  end

  def new
    @practice = Practice.new
  end

  def edit
  end

  def create
    @practice = Practice.new(practice_params)

    if @practice.save
      flash[:notice] = "Practice was saved successfully."
      redirect_to practice_path(@practice)
    else
      render :new
    end
  end

  def update
    if @practice.update(practice_params)
      flash[:notice] = "Practice was saved successfully."
      redirect_to practice_path(@practice)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @practice.destroy
    flash[:notice] = "Practice was successfully deleted."
    redirect_to practices_path
  end

  private
  def practice_params
    params.require(:practice).permit(:date, :plan, :author, :approval_1, :approval_2)
  end

  def set_practice
    @practice = Practice.find(params[:id])
  end

end
