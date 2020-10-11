require 'pry'

class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(name)
        ProjectBacker.new(self, name)
    end

    def backers
        ProjectBacker.all.collect{|project|
            if project.title == self
                project.name
            end
        }.compact
    end


end