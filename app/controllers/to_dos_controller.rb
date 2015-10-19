class ToDosController < ApplicationController
  before_action :set_to_do, only: [:show, :edit, :update, :destroy]
  before_action :logged_in

  # GET /to_dos
  def index
    @to_dos = ToDo.where(user_id: session[:user_id], completed: false)
    @completed = ToDo.where(user_id: session[:user_id], completed: true)
  end

  # Finds the todo with that id and updates its priority and position
  def sort
    params[:order].each do |key, value|
      ToDo.find(value[:id]).update_attribute(:priority, value[:position])
    end
    render :nothing => true
  end

  def complete
    @to_do = ToDo.find(params[:id])
    @to_do.update(completed: true)
  end

  # GET /to_dos/1
  def show
  end

  # GET /to_dos/new
  def new
    @to_do = ToDo.new
  end

  # GET /to_dos/1/edit
  def edit
  end

  # POST /to_dos
  def create
    @to_do = ToDo.new(to_do_params)

    if @to_do.save
      redirect_to @to_do, notice: 'To do was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /to_dos/1
  def update
    if @to_do.update(to_do_params)
      redirect_to @to_do, notice: 'To do was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /to_dos/1
  def destroy
    @to_do.destroy
    redirect_to to_dos_url, notice: 'To do was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def to_do_params
      params.require(:to_do).permit(:task_name, :due_on, :priority, :completed, :user_id)
    end
end
