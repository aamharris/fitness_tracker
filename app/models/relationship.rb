class Relationship < ActiveRecord::Base
  belongs_to :first_friend, class_name: "User"
  belongs_to :second_friend, class_name: "User"
end
