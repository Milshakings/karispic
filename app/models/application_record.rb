class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  before_update :new

  private
  def new
    self.added_by_me = 'yes'
  end
end
