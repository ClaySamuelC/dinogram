class Comment < ApplicationRecord
  include Visible
  
  belongs_to :dinopost
end
