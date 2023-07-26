class User < ApplicationRecord
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :photos
         has_many :matches
         has_many :images, as: :imageable, :through => :images
         accepts_nested_attributes_for :images 
        end
