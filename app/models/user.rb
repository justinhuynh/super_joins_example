class User < ActiveRecord::Base
  has_many :trip_users
  has_many :trips, through: :trip_users
  has_many :is_leading, class_name: "Trip", foreign_key: "group_leader_id"
  has_many :treasurer_of, class_name: "Trip", foreign_key: "group_treasurer_id"
end
