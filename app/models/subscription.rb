class Subscription < ApplicationResource
  belongs_to :subscription_plan

  validates_presence_of :subscription_plan
end
