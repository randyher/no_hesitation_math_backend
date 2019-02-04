class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :number
      t.integer :gamesproblem_id

      t.timestamps
    end
  end
end
