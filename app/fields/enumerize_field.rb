require "administrate/field/base"
require 'rails'

class EnumerizeField < Administrate::Field::Base
  def to_s
    data
  end
end
