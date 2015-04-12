class User < ActiveRecord::Base
	has_many :pets, through: :likes
end