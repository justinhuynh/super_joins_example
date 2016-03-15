class Trip < ActiveRecord::Base
  has_many :trip_users
  has_many :users, through: :trip_users
  belongs_to :leader, class_name: "User", foreign_key: "group_leader_id"
  belongs_to :treasurer, class_name: "User", foreign_key: "group_treasurer_id"
end
