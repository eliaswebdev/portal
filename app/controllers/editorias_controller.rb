class EditoriasController < ApplicationController
  before_action :set_editoria, only: [:show, :edit, :update, :destroy]

  # GET /editorias
  # GET /editorias.json
  def index
    @editorias = Editoria.all
  end

  # GET /editorias/1
  # GET /editorias/1.json
  def show
  end

  # GET /editorias/new
  def new
    @editoria = Editoria.new
  end

  # GET /editorias/1/edit
  def edit
  end

  # POST /editorias
  # POST /editorias.json
  def create
    @editoria = Editoria.new(editoria_params)

    respond_to do |format|
      if @editoria.save
        format.html { redirect_to @editoria, notice: 'Editoria was successfully created.' }
        format.json { render :show, status: :created, location: @editoria }
      else
        format.html { render :new }
        format.json { render json: @editoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /editorias/1
  # PATCH/PUT /editorias/1.json
  def update
    respond_to do |format|
      if @editoria.update(editoria_params)
        format.html { redirect_to @editoria, notice: 'Editoria was successfully updated.' }
        format.json { render :show, status: :ok, location: @editoria }
      else
        format.html { render :edit }
        format.json { render json: @editoria.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /editorias/1
  # DELETE /editorias/1.json
  def destroy
    @editoria.destroy
    respond_to do |format|
      format.html { redirect_to editorias_url, notice: 'Editoria was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_editoria
      @editoria = Editoria.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def editoria_params
      params.require(:editoria).permit(:nome, :status)
    end
end
