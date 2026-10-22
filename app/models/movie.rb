class Movie < ApplicationRecord
  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R', 'NC-17']
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.nil? || ratings_list.empty?

    where('UPPER(rating) IN (?)', ratings_list.map(&:upcase))
  end
end