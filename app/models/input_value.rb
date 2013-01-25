class InputValue
  include Mongoid::Document
  field :id
  field :value
  field :result
  belongs_to :entry
  #embedded_in :entry, :inverse_of => :input_values
end
