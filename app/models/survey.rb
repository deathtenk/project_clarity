class Survey < ActiveRecord::Base
  has_many :questions, dependent: :delete
end
