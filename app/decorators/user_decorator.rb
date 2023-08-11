class UserDecorator < ApplicationDecorator
  delegate_all

  def full_name
    "#{object.username}"
  end
end
