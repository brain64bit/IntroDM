
# call some gems required by data_mapper
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-migrations'

#connect to the database
DataMapper.setup :default, 'mysql://localhost/introdm'

#user entity
class User
# enable to call 'property' method in class
	include DataMapper::Resource
	
#	property(name,type)
#Serial = auto_increment
	property :id , Serial
	property :username , String
	property :password , String
	property :email , String
end

# migrating a database, it’s the process of changing the schema of the database.
# This could be adding a column, renaming a column, or changing properties of a
# column.

#update schema on db
DataMapper.auto_upgrade!

#recreate and clear data on model
#DataMapper.auto_migrate!


