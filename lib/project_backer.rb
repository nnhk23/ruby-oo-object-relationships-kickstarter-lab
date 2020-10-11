require_relative "./project"
require_relative "./backer"
require 'pry'

class ProjectBacker

    attr_reader :title, :name

    @@all = []

    def initialize(title, name)
        @title = title
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def project
        self.title
    end

    def backer
        self.name
    end

    

end