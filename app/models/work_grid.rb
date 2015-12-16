class WorkGrid < ActiveRecord::Base
  belongs_to :work_day
  belongs_to :slot

  validates_presence_of :work_day
  validates_presence_of :slot

  has_and_belongs_to_many :customers

  def name
    [work_day.name, ' ', slot.start_time.strftime('%H:%M')].join('')
  end
end
