class ProfesorsController < ApplicationController
  before_action :set_assistant, only: [:show, :edit, :update]
  before_action :set_user

  def index
    @profesors = Profesor.all
  end

  def show

  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def set_profesor
    @profesor = Profesor.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def profesor_params
    params.require(:profesor).permit(:nombre, :apellido, :descripcion_profesor, :foto_profesor)
  end
end
