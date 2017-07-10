class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
    	t.string :name
    	t.string :description
    	t.integer :player_id
    	t.timestamp
    end
  end
end
