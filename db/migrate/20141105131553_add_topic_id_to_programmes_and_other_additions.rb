class AddTopicIdToProgrammesAndOtherAdditions < ActiveRecord::Migration
  def change
    add_column :topics, :programme_id, :integer
    add_column :programmes, :description, :text      
  end
end
