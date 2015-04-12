class User < ActiveRecord::Base
	has_many :pets

	has_many :likes
	has_many :pets, through: :likes

	has_many :reports
	has_many :pets, through: :reports
end