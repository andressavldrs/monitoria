class SelecionadosController < ApplicationController
  before_action :set_selecionado, only: [:show, :edit, :update, :destroy]

  # GET /selecionados
  # GET /selecionados.json
  def index
    @selecionados = Selecionado.all
  end

  # GET /selecionados/1
  # GET /selecionados/1.json
  def show
  end

  # GET /selecionados/new
  def new
    @selecionado = Selecionado.new
  end

  # GET /selecionados/1/edit
  def edit
  end

  # POST /selecionados
  # POST /selecionados.json
  def create
    @selecionado = Selecionado.new(selecionado_params)

    respond_to do |format|
      if @selecionado.save
        format.html { redirect_to @selecionado, notice: 'Selecionado was successfully created.' }
        format.json { render :show, status: :created, location: @selecionado }
      else
        format.html { render :new }
        format.json { render json: @selecionado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /selecionados/1
  # PATCH/PUT /selecionados/1.json
  def update
    respond_to do |format|
      if @selecionado.update(selecionado_params)
        format.html { redirect_to @selecionado, notice: 'Selecionado was successfully updated.' }
        format.json { render :show, status: :ok, location: @selecionado }
      else
        format.html { render :edit }
        format.json { render json: @selecionado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /selecionados/1
  # DELETE /selecionados/1.json
  def destroy
    @selecionado.destroy
    respond_to do |format|
      format.html { redirect_to selecionados_url, notice: 'Selecionado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selecionado
      @selecionado = Selecionado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def selecionado_params
      params.require(:selecionado).permit(:disciplina_id, :oferta_id)
    end
end
