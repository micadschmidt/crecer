class ProfesorsController < ApplicationController
  before_action :set_assistant, only: [:show, :edit, :update]
  before_action :set_user

  def index
    @profesors = Profesor.all
  end

  def show
    @profesor = Profesor.find
  end

  def new
    @profesor = Profesor.new
  end

  def create
    @profesor = Profesor.new(profesor_params)
    # @company.user_id = current_user.id
    # authorize @company
    if @profesor.save
      redirect_to profesors_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @profesor = Profesor.find
  end

  def update
    @profesor = Profesor.find
    if @profesor.update(profesor_params)
      redirect_to profesor_path(@profesor)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @profesor = Profesor.find(params[:id])
    @profesor.destroy
    redirect_to profesors_path, status: :see_other
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
