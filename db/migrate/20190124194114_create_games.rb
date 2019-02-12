class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.integer :score
      t.integer :time_remaining
      t.string :game_type


      t.timestamps
    end
  end
end
