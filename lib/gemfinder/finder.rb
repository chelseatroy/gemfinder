require "rubygems"
require "gems"

module Gemfinder
  class Finder

      def gemfind search_term
        info = Gems.info search_term
      
        if info["name"]
          puts info["name"]
          puts info["version"]
          puts info["info"]
          puts info["project_uri"]
        else
          puts "Sorry: we couldn't find a gem by that name."
        end
      end

      def gem_explore search_term
        matches = Gems.search search_term

        if matches[0]
          matches.each do |candidate_gem|
            puts candidate_gem["name"]
            puts candidate_gem["info"]
            puts candidate_gem["project_uri"]
            puts
          end
        else
          puts "Sorry, we couldn't find any gems with that search term in the name."
        end
      end

    end
end