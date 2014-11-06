class AddNumberStatusToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :status, :string
    add_column :topics, :number, :integer      
  end
end
