class List < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true

  has_many :tasks, -> { order(position: :asc) }, dependent: :destroy
end
