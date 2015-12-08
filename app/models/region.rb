class Region < ActiveRecord::Base
  belongs_to :country
  validates :country, presence: true
  accepts_nested_attributes_for :country

  validates :name, presence: true

  has_many :zip_codes

end
