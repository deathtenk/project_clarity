class Survey < ActiveRecord::Base
  has_many :questions, dependent: :destroy
  validates :name, presence: true
end
