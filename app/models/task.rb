class Task < ActiveRecord::Base
  belongs_to :list
  acts_as_list scope: :list, add_new_at: :top
end
