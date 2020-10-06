# code here!
require 'pry'

class School
    attr_accessor :roster

    def initialize(name)
        @name = name 
        @roster = {}
    end

    def add_student(student_name, grade)
        @grade = grade 
        @student_name = student_name 

        if @roster.keys.include?(@grade)
            @roster[@grade] << @student_name 
        else
            @roster[@grade] = []
            @roster[@grade] << @student_name  
        end 
    end 

    def grade(grade)
        @grade = grade 
        @roster[@grade] 
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
end