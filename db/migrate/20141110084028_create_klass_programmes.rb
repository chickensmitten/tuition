class CreateKlassProgrammes < ActiveRecord::Migration
  def change
    create_table :klass_programmes do |t|
      t.integer :klass_id, :programme_id
      t.timestamps        
    end
  end
end
