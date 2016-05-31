class MarcadoresController < ApplicationController
  before_action :set_marcador, only: [:show, :edit, :update, :destroy]

  # GET /marcadores
  # GET /marcadores.json
  def index
    @marcadores = Marcador.all
  end

  # GET /marcadores/1
  # GET /marcadores/1.json
  def show
  end

  # GET /marcadores/new
  def new
    @marcador = Marcador.new
  end

  # GET /marcadores/1/edit
  def edit
  end

  # POST /marcadores
  # POST /marcadores.json
  def create
    @marcador = Marcador.new(marcador_params)

    respond_to do |format|
      if @marcador.save
        format.html { redirect_to @marcador, notice: 'Marcador was successfully created.' }
        format.json { render :show, status: :created, location: @marcador }
      else
        format.html { render :new }
        format.json { render json: @marcador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marcadores/1
  # PATCH/PUT /marcadores/1.json
  def update
    respond_to do |format|
      if @marcador.update(marcador_params)
        format.html { redirect_to @marcador, notice: 'Marcador was successfully updated.' }
        format.json { render :show, status: :ok, location: @marcador }
      else
        format.html { render :edit }
        format.json { render json: @marcador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marcadores/1
  # DELETE /marcadores/1.json
  def destroy
    @marcador.destroy
    respond_to do |format|
      format.html { redirect_to marcadores_url, notice: 'Marcador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marcador
      @marcador = Marcador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def marcador_params
      params.require(:marcador).permit(:nome)
    end
end
