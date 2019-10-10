class Blog < ApplicationRecord
    enum status: {draft: 0, approved: 1, published: 2}
    extend FriendlyId
    friendly_id :title, use: :slugged
end
