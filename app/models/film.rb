class Film
  include Mongoid::Document
  field :name, :type => String
  field :orig_name, :type => String
  key :orig_name
end
