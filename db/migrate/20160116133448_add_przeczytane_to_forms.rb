class AddPrzeczytaneToForms < ActiveRecord::Migration
  def change
    add_column :forms, :przeczytane, :boolean, default: false
  end
end
