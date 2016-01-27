class Task < ActiveRecord::Base
  belongs_to :list

  validates :list, presence: true
  acts_as_list scope: :list, add_new_at: :top
end
