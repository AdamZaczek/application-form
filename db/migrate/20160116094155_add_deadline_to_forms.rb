class AddDeadlineToForms < ActiveRecord::Migration
  def change
    add_column :forms, :deadline, :datetime
  end
end
