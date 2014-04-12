class CreateCodigos < ActiveRecord::Migration
  def change
    create_table :codigos do |t|
      t.string :codigo
      t.integer :tipo_id

      t.timestamps
    end
  end
end
