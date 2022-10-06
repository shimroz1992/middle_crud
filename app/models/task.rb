class Task < ApplicationRecord
  belongs_to :user


  def self.to_csv
    attributes = %w{id task_name aim user_id}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
