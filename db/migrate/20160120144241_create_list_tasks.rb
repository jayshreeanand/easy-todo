class CreateListTasks < ActiveRecord::Migration
  def change
    create_table :list_tasks do |t|
      t.belongs_to :list, index: true
      t.belongs_to :task, index: true
      t.integer :priority, null: false, default: 1
      t.timestamps null: false
    end
  end
end
