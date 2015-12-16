class Customer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # personal data
  mount_uploader :picture, PictureUploader
  has_one :address, as: :user

  # link to work_grids
  has_and_belongs_to_many :work_grids
  has_many :slots, through: :work_grids
  has_many :work_days, through: :work_grids
  accepts_nested_attributes_for :work_grids

end
