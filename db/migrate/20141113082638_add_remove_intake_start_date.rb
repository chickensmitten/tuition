class AddRemoveIntakeStartDate < ActiveRecord::Migration
  def change
    remove_column :intakes, :start_date, :string 
    add_column :intakes, :start_date, :datetime
  end
end
