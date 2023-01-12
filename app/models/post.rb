class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: {in: %w(Fiction Non-Fiction) }
    validate :clickbate 

    def clickbate
        if title ==! `Won't Believe` || "Secret" || "Top [number]" || "Guess"
            errors.add(:title, " please add clickbate ")
        end
    end
end
