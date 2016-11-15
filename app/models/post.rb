class Post < ApplicationRecord
  belongs_to :user

  def self.urgent
    where(priority: 90..100)
  end

  def self.low
    where(priority: 1..25)
  end
end
