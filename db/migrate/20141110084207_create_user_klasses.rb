class CreateUserKlasses < ActiveRecord::Migration
  def change
    create_table :user_klasses do |t|
      t.integer :klass_id, :user_id
      t.timestamps              
    end
  end
end
