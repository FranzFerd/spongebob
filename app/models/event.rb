class Event < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  #devise :database_authenticatable, :registerable,
   #      :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
attr_accessible :twitter, :facebook, :avatar, :user_id, :contact_name,:contact_method, :contact_phone, :contact_email, :address, :terms_agreement_check, :attendees, :tax_deductible, :audience, :category, :certificates, :city, :date, :decision_maker_check, :description, :end_date, :images, :postal_code, :speakers, :sponsors_known, :sponsorship_deadline, :sponsorship_level, :sponsorship_offer, :sponsorship_price, :sponsorships_taken, :start_date, :target_group_age, :target_group_education, :target_group_jobs, :zip_code, :terms_agreement_check, :title, :videos, :website

  
belongs_to :user
#has_one :address
#has_one :location 
#has_many :avatars
#accepts_nested_attributes_for :avatars
#has_and_belongs_to_many :sponsors



#validates :title, presence: true, length: { maximum: 30 },  :uniqueness => true
#has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
#validates :description, presence: true, length: { maximum: 800 }
#validates :website, :format => URI::regexp(%w(http https)),length: { maximum: 800 }
#validates :zip_code, :length => { :is => 5 },:numericality => { :only_integer => true }
#validates :address, presence: true
#validates :city, presence: true

#validates :date, presence: true
#validates :start_date, presence: true
#validates :end_date, presence: true

#validates :category, presence: true, :validate_end_date_after_start_date
#validates :speakers, presence: true
#validates :certificates, presence: true
#validates :sponsors_known, presence: true
#has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" , :path =>":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename"   }
#validates :target_group_jobs, presence: true
#validates :target_group_age, presence: true
#validates :target_group_education, presence: true
#validates :sponsorship_deadline, presence: true
#validates :sponsorship_offer, presence: true
#validates :sponsorship_taken, presence: true, :numericality => { :only_integer => true }
#validates :sponsorship_price, presence: true, :numericality => true
#validates :sponsorship_level, presence: true


#class Event
 # self.per_page = 10
#end


def validate_end_date_before_start_date
  if end_date && start_date
    errors.add(:end_date, "Project must begin before it ends") if end_date < start_date
  end
end

end






#daum auf heute einstellen 
# wenn datum gewählt dann andere nicht mehr 

