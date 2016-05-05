require './app/data_mapper_setup'
require 'data_mapper'
require 'dm-postgres-adapter'


class Link
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :url, String

  has n, :tags, :through => Resource

end
