class AddDetailsToCentres < ActiveRecord::Migration
  def change
    add_column :centres, :name, :string
    remove_column :centres, :room, :string  
    remove_column :centres, :day_time, :string
    remove_column :centres, :programme_id, :integer
    remove_column :centres, :user_id, :integer    
  end
end
