require_relative "./project_backer"
require 'pry'

class Backer

    attr_accessor :name

    def initialize (name)
        @name = name
    end

    def back_project(title)
        ProjectBacker.new(title, self)
    end
    
    def backed_projects
        ProjectBacker.all.collect{|project|
            if project.name == self
                project.title
            end
        }.compact
    end

end