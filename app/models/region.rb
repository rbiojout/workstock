class Region < ActiveRecord::Base
  belongs_to :country
  validates :country, presence: true

  validates :name, presence: true

  has_many :zip_codes

end
