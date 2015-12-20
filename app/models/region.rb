class Region < ActiveRecord::Base
  belongs_to :country
  validates :country, presence: true
  accepts_nested_attributes_for :country

  has_and_belongs_to_many :services

  validates :name, presence: true

  has_many :zip_codes

end
