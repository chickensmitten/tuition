class AddAssociationsToSchemas < ActiveRecord::Migration
  def change
    add_column :centres, :academy_id, :integer
    add_column :rooms, :centre_id, :integer
  end
end
