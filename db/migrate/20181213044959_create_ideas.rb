class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.string :title
      t.text :problem
      t.text :people
      t.text :solution

      t.timestamps null: false
    end
  end
end
