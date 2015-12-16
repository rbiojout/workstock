class Slot < ActiveRecord::Base
  has_many :work_grids
  has_many :work_days, through: :work_grids
end
