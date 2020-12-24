# code here!
require 'pry'

class School
     def initialize(roster)
        @roster = {}
     end
    def roster
        @roster
    end

    def add_student(name, grade)
        
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster = @roster.sort.to_h
        # @roster.map do |key,value|
        #     puts key,value.sort
        # end
        @roster.each {|key, value| @roster[key] = value.sort}.to_h
        #binding.pry
    end
end
skola = School.new("Skola")
    skola.add_student("Homer Simpson", 9)
    skola.add_student("Bart Simpson", 9)
    skola.add_student("Avi Flombaum", 10)
    skola.add_student("Jeff Baird", 10)
    skola.add_student("Blake Johnson", 7)
    skola.add_student("Jack Bauer", 7)
   

#puts skola.roster
puts  skola.sort
