class Portfolio < ApplicationRecord
    validates_presence_of :title, :body, :thumb_img, :main_img
end
