class Patient < ActiveRecord::Base
	has_many :appointments, dependent: :destroy
	has_many :doctors, through: :appointment
	validates_presence_of :name , :age, :sex
  attr_accessible :age, :name, :sex, :symtom, :tel
end
