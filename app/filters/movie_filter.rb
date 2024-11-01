# frozen_string_literal: true

class MovieFilter
  class << self

    def retrieve_all
      Movie.all
    end

    def find_by(id)
      Movie.find(id)
    end

  end
end