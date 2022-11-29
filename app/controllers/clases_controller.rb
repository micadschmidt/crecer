class ClasesController < ApplicationController
  # before_action :set_clases, only: [:show, :edit, :update]
  before_action :set_user

  def index
    @clases = Clase.all
  end

  def show
    @clase = Clase.find
  end

  # def new
  #   @clase = Clase.new
  # end

  # def create
  #   @profesor = Profesor.new(profesor_params)
  #   # @company.user_id = current_user.id
  #   # authorize @company
  #   if @profesor.save
  #     redirect_to profesors_path
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def edit
  #   @profesor = Profesor.find
  # end

  # def update
  #   @profesor = Profesor.find
  #   if @profesor.update(profesor_params)
  #     redirect_to profesor_path(@profesor)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @profesor = Profesor.find(params[:id])
  #   @profesor.destroy
  #   redirect_to profesors_path, status: :see_other
  # end

  private
  # def set_clases
  #   @clase = Clase.find(params[:id])
  # end

  def set_user
    @user = current_user
  end

  # def clase_params
  #   params.require(:profesor).permit(:nombre, :apellido, :descripcion_profesor, :foto_profesor)
  # end
end
