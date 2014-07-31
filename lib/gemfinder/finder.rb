require "rubygems"
require "gems"

module Gemfinder
  class Finder

      def gemfind search_term

        # info = Gems.info search_term
       
        # puts info["name"]
        # puts info["version"]
        # puts info["info"]


        matches = Gems.search search_term
        matches.each do |candidate_gem|
          jaim = Gems.info candidate_gem
          puts jaim["name"]
        end
      end

    end
end