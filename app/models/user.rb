class User < ApplicationRecord
	has_many :tasks, dependent: :destroy

   def self.to_csv
    attributes = %w{id username password}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
