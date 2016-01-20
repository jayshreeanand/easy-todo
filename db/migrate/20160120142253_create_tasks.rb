class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.belongs_to :user, index: true
      t.text :title, null: false
      t.text :description
      t.boolean :is_complete, default: false
      t.datetime :starts_at
      t.integer :duration
      t.datetime :due_at
      t.timestamps null: false
    end
  end
end
