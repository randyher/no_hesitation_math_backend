class CreateGamesproblems < ActiveRecord::Migration[5.2]
  def change
    create_table :gamesproblems do |t|
      t.integer :game_id
      t.integer :problem_id
      t.integer :answer
      
      t.timestamps
    end
  end
end
