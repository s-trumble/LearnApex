public with sharing class PascalsTriangleGenerator {
    public List<List<Integer>> generatePascalsTriangle (Integer n) {
        List<List<Integer>> triangle = new List<List<Integer>>();

        for(Integer i = 0 ; i < n ; i++){
            List<Integer> row = new List<Integer>();
            
            //columns. Should be as many columsn as rows in the triangle
            for(Integer j = 0 ; j <= i ; j++){
                 Integer value;
                 //first and last value in the row always 1
                if(j == 0 || j == i){
                    value = 1;
                } else{
                    // get value from row above column to left and row above column above 
                    value = triangle[i - 1][j - 1] + triangle[i - 1][j];
                }
                row.add(value);  
                System.debug('i = ' + i + '. j = ' + j + '. row = ' + row); 

            }
            triangle.add(row);
            System.debug('add row to triangle. Triangle: ' + triangle);
        }
        System.debug('final triangle: ' + triangle);
        return triangle;
    }
}