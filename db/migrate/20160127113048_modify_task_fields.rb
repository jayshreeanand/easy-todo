class ModifyTaskFields < ActiveRecord::Migration
  def change
    remove_reference :tasks, :user, index: true
    add_reference :tasks, :list, index: true
    add_column :tasks, :position, :integer
  end
end
