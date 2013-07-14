class Appointment < ActiveRecord::Base
  
  belongs_to :patient
  belongs_to :doctor
  attr_accessible :Date, :Room, :patient_id , :doctor_id , :doctor, :patient
  validates_presence_of :patient_id, :doctor_id , :Room
  validate :count_patient, :on => :create
  validates_uniqueness_of :Date



  	protected
 	def count_patient

 		if self.patient.appointments(:reload).size >= 3

 			errors.add(:base, "Exeeding Patient added")

 		end


 	end

 	def self.search(search)
 		if search 
 			find(:all ,conditions: ['name iLIKE ?', "%#{search}%", 'created_at DESC'])

 		else 
 		
 			find(:all)	
 		end
 	end	
 			
end
