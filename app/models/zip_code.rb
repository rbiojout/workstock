class ZipCode < ActiveRecord::Base
  belongs_to :region
  validates :region, presence: true

  validates :name, presence: true

end
