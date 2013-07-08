class Doctor < ActiveRecord::Base
	has_many :appointments
	has_many :patients, through: :appointment
  attr_accessible :name, :symptom_discussion,:sex, :tel
  validates_presence_of :name, :symptom_discussion
end
