public with sharing class CourseEnrollmentAnalyzer {
    
    public Map<String,Integer> countStudentsPerCourse(List<Map<String,Object>> students){
        Map<String,Integer> courseCountMap = new Map<String,Integer>();

        for(Map<String,Object> student : students){
            String studentId = (String)student.get('studentId');
            List<String> enrolledCourses = (List<String>)student.get('enrolledCourses');

            for(String enrolledCourse : enrolledCourses){
                if(courseCountMap.containsKey(enrolledCourse)){
                    courseCountMap.put(enrolledCourse, courseCountMap.get(enrolledCourse) + 1);
                } else {
                    courseCountMap.put(enrolledCourse, 1);
                }
            }
        }
        return courseCountMap;
    }
}
/*
Write a method named countStudentsPerCourse in the StudentEnrollmentAnalyzer class. This method should take a list of maps, where each map represents a student with their studentId and a list of enrolledCourses. The method should return a map where the keys are course names and the values are the counts of students enrolled in each course.

Input Structure:

- students: A List of Map<String, Object>, where each Map represents a student.

Each student map in the students list should contain the following keys:

- studentId (String): An identifier for the student.
- enrolledCourses (List<String>): A list of courses the student is enrolled in.

The method returns a Map<String, Integer> where:
- Keys are course names (String)
- Values are the counts of students enrolled in each course (Integer)
*/