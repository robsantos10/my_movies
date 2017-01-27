class Movie < ActiveRecord::Base
  validates :title, presence: true
  validates :title, uniqueness: { scope: :release_date,
      message: "Should not have two movies with name and release_date"
  }

  belongs_to :director, class_name: 'Director', foreign_key: "director_id", optional: true
  has_and_belongs_to_many :actors, associtation_foreign_key: 'actor_id', join_table: 'actors_movies'
end
