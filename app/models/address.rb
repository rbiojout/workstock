class Address < ActiveRecord::Base
  belongs_to :zip_code
  belongs_to :user, polymorphic: true

  def global_user
    self.user.to_global_id if self.user.present?
  end

  def global_user=(user)
    self.user = GlobalID::Locator.locate user
  end

end
