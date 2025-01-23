public with sharing class MultiplicationTableGenerator {
    public List<List<Integer>> generateMultiplicationTable(Integer n) {
        List<List<Integer>> table = new List<List<Integer>>();

        for(Integer i = 1 ; i <= n ; i++){
            List<Integer> row = new List<Integer>();
            System.debug('i: ' + i);
            for(Integer j = 1 ; j <= n ; j++){
                System.debug('j: ' + j);
                row.add(i * j);
                System.debug('building row: ' + row);
            }
            System.debug('complete row: ' + row);
            table.add(row);
        }
        System.debug(table);
        return table;
    }
}