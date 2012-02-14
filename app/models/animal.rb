class Animal < ActiveRecord::Base
    belongs_to :vet

    validates :name, :length => { :maximum => 140 }
end
