require "rubygems"
require "gems"

module Gemfinder
  class Finder

      def gemfind search_term

        info = Gems.info search_term
       
        puts info["name"]
        puts info["version"]
        puts info["info"]


        # matches = Gems.search(search_terms)
        # matches.each do |candidate_gem|
        #   puts "#{candidate_gem}: "
        #   puts Gems.info(candidate_gem)
        end
      end

    end
end