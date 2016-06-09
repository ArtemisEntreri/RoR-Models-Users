class User < ActiveRecord::Base
	validates :first_name, :last_name, :email_address, :age, presence: true
	validates_numericality_of :age, length: {in: 10..149}
	validates :first_name, :last_name, length: {minimum: 2}
end
