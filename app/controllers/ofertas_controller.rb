class OfertasController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_oferta, only: [:show, :edit, :update, :destroy]
  #before_action :authenticate_user!, except: [:index, :show]
  # GET /ofertas
  # GET /ofertas.json
  def index
    @ofertas = Oferta.all
  end

  # GET /ofertas/1
  # GET /ofertas/1.json
  def show
  end

  # GET /ofertas/new
  def new
    @oferta = current_user.ofertas.build 
  end

  # GET /ofertas/1/edit
  def edit
  end

  # POST /ofertas
  # POST /ofertas.json
  def create
    @oferta = current_user.ofertas.build(oferta_params)

    respond_to do |format|
      if @oferta.save
        format.html { redirect_to @oferta, notice: 'Oferta de monitoria criada com sucesso!' }
        format.json { render :show, status: :created, location: @oferta }
      else
        format.html { render :new }
        format.json { render json: @oferta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofertas/1
  # PATCH/PUT /ofertas/1.json
  def update
    respond_to do |format|
      if @oferta.update(oferta_params)
        format.html { redirect_to @oferta, notice: 'Oferta de monitoria editada com sucesso!' }
        format.json { render :show, status: :ok, location: @oferta }
      else
        format.html { render :edit }
        format.json { render json: @oferta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofertas/1
  # DELETE /ofertas/1.json
  def destroy
    @oferta.destroy
    respond_to do |format|
      format.html { redirect_to ofertas_url, notice: 'Oferta de monitoria excluida com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oferta
      @oferta = Oferta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oferta_params
      params.require(:oferta).permit(:turma, :disciplina_id)
    end
end
