class CreateKlassCentres < ActiveRecord::Migration
  def change
    create_table :klass_centres do |t|
      t.integer :klass_id, :centre_id
      t.timestamps          
    end
  end
end
