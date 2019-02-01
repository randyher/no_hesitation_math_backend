class CreateProblems < ActiveRecord::Migration[5.2]
  def change
    create_table :problems do |t|
      t.string :number_sentence
      t.string :problem_type


      t.timestamps
    end
  end
end
