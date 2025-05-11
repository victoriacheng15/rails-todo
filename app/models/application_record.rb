# class ApplicationRecord < ActiveRecord::Base
#   primary_abstract_class
# end

class ApplicationRecord
  include ActiveModel::Model  # Use ActiveModel for non-database models
end