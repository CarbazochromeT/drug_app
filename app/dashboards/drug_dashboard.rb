require "administrate/base_dashboard"

class DrugDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    division: Field::Enumerize,
    document_url: Field::String,
    drug_ingredients: Field::HasMany,
    drug_symptoms: Field::HasMany,
    effect_text: Field::String,
    for_days: Field::Number,
    formulation: Field::Enumerize,
    ingredients: Field::HasMany.with_options(
      searchable: true,
      searchable_fields: ['name'],
      skip: :drug),
    maker_name: Field::BelongsTo,
    name: Field::String,
    symptoms: Field::HasMany.with_options(
      searchable: true,
      searchable_fields: ['name'],
      skip: :drug),
    taxation: Field::Boolean,
    usage: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    division
    document_url
    drug_ingredients
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    division
    document_url
    drug_ingredients
    drug_symptoms
    effect_text
    for_days
    formulation
    ingredients
    maker_name
    name
    symptoms
    taxation
    usage
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    division
    document_url
    effect_text
    for_days
    formulation
    ingredients
    maker_name
    symptoms
    taxation
    usage
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how drugs are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(drug)
    drug.name
  end
end
