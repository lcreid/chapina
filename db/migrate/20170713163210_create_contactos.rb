class CreateContactos < ActiveRecord::Migration[5.1]
  def change
    create_table :contactos do |t|
      t.string :corre_ele
      t.text :mensaje
      t.string :asunto

      t.timestamps
    end
  end
end
