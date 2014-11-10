class AddReviewDateToIntakes < ActiveRecord::Migration
  def change
    add_column :intakes, :start_date, :string   
    add_column :intakes, :centre_id, :integer
    add_column :intakes, :user_id, :integer
    remove_column :intakes, :topic_id, :integer
  end
end
