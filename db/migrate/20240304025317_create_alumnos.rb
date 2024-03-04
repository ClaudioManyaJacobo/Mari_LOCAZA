class CreateAlumnos < ActiveRecord::Migration[7.1]
  def change
    create_table :alumnos do |t|
      t.string :codigo
      t.string :nombre
      t.integer :edad
      t.references :facultad, null: false, foreign_key: true

      t.timestamps
    end
  end
end
