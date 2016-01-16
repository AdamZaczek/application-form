class AddKosztToForms < ActiveRecord::Migration
  def change
    add_column :forms, :koszt, :integer
  end
end
