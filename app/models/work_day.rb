class WorkDay < ActiveRecord::Base
  has_many :work_grids
  has_many :slots, through: :work_grids

  accepts_nested_attributes_for :work_grids, :slots
end
