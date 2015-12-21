class Service < ActiveRecord::Base

  has_and_belongs_to_many :regions
  accepts_nested_attributes_for :regions

  validates :name, presence: true

end
