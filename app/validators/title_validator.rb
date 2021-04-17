class TitleValidator < ActiveModel::Validator
    def validate(record)
        if (record.title.to_s.split(" ") & ["Won't", "Believe", "Secret", "Top [number]", "Guess"]).any? == false
            record.errors[:title] = "Post is not clickbait."
        end
    end
end