class SimpleUserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :name
end
