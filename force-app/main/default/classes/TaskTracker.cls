public with sharing class TaskTracker {
    
    public Map<String,Integer> calculateCompletedTasks(List<Map<String, Object>> departments){
        //empty map to store results
        Map<String,Integer> completedTaskCounts = new Map<String,Integer>();
        //iterate through departments
        for(Map<String,Object> department : departments){
            //extract departmentName
            String departmentName = (String)department.get('departmentName');
            //extract employees list
            List<Map<String,Object>> employees = (List<Map<String,Object>>)department.get('employees');
            
            //initailise counter for compelted tasks
            Integer completedTasks = 0;

            //iterate through employees
            for(Map<String,Object> employee : employees){
                //extract employeeName (not needed)
                String employeeName = (String)employee.get('employeeName');

                //extract lists of task for employee
                List<Map<String,Object>> tasks = (List<Map<String,Object>>)employee.get('tasks');

                //iterate through tasks
                for(Map<String,Object> task : tasks){
                    //extract taskId (not needed)
                    String taskId = (String)task.get('taskId');
                    //check if task completed and increment counter
                    Boolean isCompleted = (Boolean)task.get('isCompleted');

                    if(isCompleted){
                        completedTasks++;
                    }
                    
                }
            }
            //add department name and compelted task count to map
            completedTaskCounts.put(departmentName, completedTasks);
        }

        return completedTaskCounts;
    }
}