class AddNombresApellidosToEncuesta < ActiveRecord::Migration[5.1]
  def change
    add_column :encuestas, :nombres, :string
    add_column :encuestas, :apellidos, :string
  end
end
