class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.string :start_at
      t.string :to_end_at
      t.string :priority

      t.timestamps
    end
  end
end
