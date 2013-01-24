class Entry
  include Mongoid::Document
  embeds_many :input_values
end
