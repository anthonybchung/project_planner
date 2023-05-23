class Project < ApplicationRecord

  attribute :opened, :datetime, default: Time.now

  validates :name, presence: true, uniqueness: true
  validates :vision, length: {maximum: 256}
  validates :opened, presence:true
end
