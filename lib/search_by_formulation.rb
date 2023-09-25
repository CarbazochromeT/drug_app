class Drug
  include search_by_form

  enumerize :formulation, in: { tablet: 0, powder: 1, capsule: 2, liquid: 3, nose: 4 }, scope: true
  enumerize :division, in: { to_guide: 0, one_kind: 1, two_kind: 2, three_kind: 3, two_designate: 4 }, scope: true

  def search_by_formulation
    Drug.formulation.find_values(*Drug.formulation.values.map(&:to_sym)).map { |formulation| [formulation.text, formulation.value] }
  end

end