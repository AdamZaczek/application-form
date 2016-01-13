class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.text :opis
      t.string :kategoria
      t.string :email

      t.timestamps null: false
    end
  end
end
