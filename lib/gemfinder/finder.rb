require "gems"

module Gemfinder
  class Finder

      def gemfind
        search_terms = gets.chomp

        matches = Gems.search(search_terms)
        matches.each do |candidate_gem|
          puts "#{candidate_gem}: "
          puts Gems.info(candidate_gem)
        end
      end

    end
end