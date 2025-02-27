class MovieService
  class << self 
      
      def save(movie)
        movie.save
      end
  
      def update(movie, movie_params)
        movie.update(movie_params)
      end
  
      def destroy(movie)
        movie.destroy
      end
  end
end
