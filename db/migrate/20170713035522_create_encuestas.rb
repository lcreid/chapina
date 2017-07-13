class CreateEncuestas < ActiveRecord::Migration[5.1]
  def change
    create_table :encuestas do |t|
      t.string :primer_nombre
      t.string :segundo_nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :corre_ele
      t.string :provincia
      t.boolean :edad
      t.boolean :votaria
      t.boolean :dpi
      t.boolean :pasaporte
      t.boolean :servicios

      t.timestamps null: false
    end

    add_index :encuestas, :corre_ele
  end
end
