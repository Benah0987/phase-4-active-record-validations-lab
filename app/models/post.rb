class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimumm: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ['Fiction', 'Non-Fiction']}

    # custom validation
    validates :words

    private
#   function words
    def words
        # define the words
        clickbait_keywords = ["Won't Believe", "Secret", "Top", "Guess"]
        # what i awant to happen
        unless clickbait_keywords.any? {|keyword| title.include?(keyword)}
            errors.add(:title, "should be sufficiently clickbait-y")
        end
    end

end


