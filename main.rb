require 'mongo'
require './session_repository'

def hosts
  ['127.0.0.1:27017']
end

repo = SessionRepository.new(
  mongo_client: Mongo::Client.new(hosts, database: :falcon)
)

repo.create('1234')
