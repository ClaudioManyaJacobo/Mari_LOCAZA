class CreateFacultads < ActiveRecord::Migration[7.1]
  def change
    create_table :facultads do |t|
      t.string :id_facultad
      t.string :nombre

      t.timestamps
    end
  end
end
