class Device < ApplicationResource
  belongs_to :user

  validates_presence_of :user
end
