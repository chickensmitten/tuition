class CreateKlassRooms < ActiveRecord::Migration
  def change
    create_table :klass_rooms do |t|
      t.integer :klass_id, :room_id
      t.timestamps          
    end
  end
end
