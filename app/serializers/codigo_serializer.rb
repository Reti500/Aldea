class CodigoSerializer < ActiveModel::Serializer
  attributes :id, :codigo, :tipo, :fecha, :hora

  def tipo
  	if object.tipo
  		return object.tipo.tipo
  	end

  	return nil
  end

  def fecha
  	object.created_at.to_date
  end

  def hora
  	object.created_at.strftime("%I:%M%p")
  end
end
