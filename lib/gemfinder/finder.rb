require "rubygems"
require "gems"

module Gemfinder
  class Finder

      def gemfind search_term
        info = Gems.info search_term
       
        puts info["name"]
        puts info["version"]
        puts info["info"]
        puts info["project_uri"]
        end
      end

      def gem_explore search_term
        matches = Gems.search search_term

        matches.each do |candidate_gem|
          puts candidate_gem["name"]
          puts candidate_gem["info"]
          puts candidate_gem["project_uri"]
          puts
        end
      end

    end
end