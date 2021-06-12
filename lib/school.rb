class School

    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        roster[grade] ||= [] #this means roster first key or give it empty array 
        roster[grade] << student_name #shovel student name into the roster hash 
    end

    def grade(student_grade) #I'm not understanding this because I didn't go through the fundlementals of accessing array part
        roster[student_grade]
    end 

    def sort
        sorted = {}
        roster.each do |grade, students|
          sorted[grade] = students.sort
        end
        sorted
    end




end