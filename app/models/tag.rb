require './app/data_mapper_setup'
require 'data_mapper'
require 'dm-postgres-adapter'

class Tag
  include DataMapper::Resource

  property :id, Serial
  property :tag, String

end
