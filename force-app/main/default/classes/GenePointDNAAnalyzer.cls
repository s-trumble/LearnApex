public class GenePointDNAAnalyzer {
    // Write your code here
    public String analyzeGCContent(String input){
        Integer gCount = input.countMatches('G');
        system.Debug('g:' + gCount);
        Integer cCount = input.countMatches('C');
        system.debug('c: ' + cCount);
        Integer gcCount = gCount + cCount;
        system.debug('gc: ' + gcCount);
		system.debug('input length: ' + input.length() );
        if( gcCount / input.length() > 0.6){
            return 'High GC content';
        } else {
            return 'Low GC content';
        }

    }
}