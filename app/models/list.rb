class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks, dependent: :destroy, -> { order(position: :asc) }
end
