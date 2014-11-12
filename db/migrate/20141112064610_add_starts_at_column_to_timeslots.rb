class AddStartsAtColumnToTimeslots < ActiveRecord::Migration
  def change
    add_column :timeslots, :starts_at, :datetime
  end
end
