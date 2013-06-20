class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
#accepts_nested_attributes_for :contacts
#has_many :contacts
  
  attr_accessible :contact_name, :contact_mail, :contact_fax, :contact_phone, :contact_mobile, :offer, :zip_code, :city, :address, :phone, :fax, :employees, :fax, :name, :privacy, :avatar_content_type, :avatar_file_size, :avatar_updated_at, :avatar_file_name, :terms, :email, :avatar, :password, :password_confirmation, :first_name, :company, :title, :website, :sponsor_check, :remember_token, :organizer_check, :festnetz, :adresse, :employees
  before_save { |user| user.email = email.downcase }
  has_many :events, :dependent => :destroy
 # has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/assets/missing_profile2.gif"
  accepts_nested_attributes_for :events, :allow_destroy => true
  has_one :contact
  accepts_nested_attributes_for :contact, :allow_destroy => true
  
  def full_name
    "#{first_name} #{name}"
  end
  
  def full_address
    "#{zip_code} in #{city} in Deutschland"
  end
  
  #validates :name, :first_name, presence: true, length: { maximum: 30 }
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence:   true,
   #           format:     { with: VALID_EMAIL_REGEX },
    #       uniqueness: { case_sensitive: false }
  #validates :password, length: { minimum: 6 }
  #validates :password_confirmation, presence: true
 #has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" , :path =>":rails_root/public/system/:class/:attachment/:id_partition/:style/:filename"   }    #:default_url => "rails.png"
  #validates :terms, :acceptance => true, :on => :create
 #validates_acceptance_of :terms
end