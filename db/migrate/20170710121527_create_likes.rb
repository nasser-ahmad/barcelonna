class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
    	t.boolean :like
    	t.integer :player_id, :skill_id
    	t.timestamp
    end
  end
end
