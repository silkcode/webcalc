class InputValue
  include Mongoid::Document
  field :name
  field :value
  field :result
  embedded_in :entry, :inverse_of => :input_values
end
