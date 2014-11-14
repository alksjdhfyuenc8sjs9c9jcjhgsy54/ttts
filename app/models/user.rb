class User < ActiveRecord::Base
  validates :name,
    presence: true
  validates :profile,
    presence: true
end
