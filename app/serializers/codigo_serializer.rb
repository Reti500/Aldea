class CodigoSerializer < ActiveModel::Serializer
  attributes :id, :codigo, :tipo

  def tipo
  	if object.tipo
  		return object.tipo.tipo
  	end

  	return nil
  end
end
