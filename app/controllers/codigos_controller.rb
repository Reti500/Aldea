class CodigosController < ApplicationController

	#skip_before_filter :verify_authenticity_token, :if => Proc.new { |c| c.request.format == 'application/json' }
	skip_before_filter  :verify_authenticity_token

  def index
  	render json: Codigo.all
  	# render json: { total: Codigo.all.length, codigos: Codigo.all }
  end

  def create
  	@tipo = params[:tipo]

  	@codigo = Codigo.new(codigos_params)
  	@codigo.tipo = Tipo.find_or_create_by(tipo: @tipo)
  	@codigo.save

  	render json: @codigo
  end

  private
  def codigos_params
  	params.require(:codigo).permit(:codigo)
  end
end
