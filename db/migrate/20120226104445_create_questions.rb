class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :body
      t.decimal :difficulty
      t.string :origin

      t.timestamps
    end
  end
end
