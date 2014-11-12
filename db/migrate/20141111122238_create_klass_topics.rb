class CreateKlassTopics < ActiveRecord::Migration
  def change
    create_table :klass_topics do |t|
      t.integer :klass_id, :topic_id
      t.timestamps         
    end
  end
end
