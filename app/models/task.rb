class Task < ActiveRecord::Base
  has_many :list_tasks
  has_many :lists, through: :list_tasks
end
