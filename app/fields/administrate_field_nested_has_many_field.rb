require "administrate/field/base"

class AdministrateFieldNestedHasManyField < Administrate::Field::Base
  def to_s
    data
  end
end
