class Pet < ActiveRecord::Base
  
	@protetor

	def initialize
		@protetor = 'a'
	end

	def protetor
		return @protetor
	end

	def protetor=(value)
		@protetor = value
	end

  belongs_to :user
  has_one :user
  has_many :likes
  has_many :users, through: :likes
end
