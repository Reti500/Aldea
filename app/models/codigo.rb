class Codigo < ActiveRecord::Base
	belongs_to :tipo

	# validates_uniqueness_of :codigo
end
