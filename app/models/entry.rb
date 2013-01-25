class Entry
  include Mongoid::Document
  has_many :input_values
  #embeds_many :input_values
end
