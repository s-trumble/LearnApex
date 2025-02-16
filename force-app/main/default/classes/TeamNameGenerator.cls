public with sharing class TeamNameGenerator{   
   public String generateTeamName(List<String> memberNames) {
        if (memberNames == null || memberNames.isEmpty()) {
            return null;
        }
        List<String> uppercaseMemberNames = new List<String>();
        String teamName='';
        //if do sort before going uppercase will use ascii sorting so abcd...xyzABC..
        for(String name:membernames){
        uppercaseMemberNames.add(name.toUpperCase()) ;
        }
        uppercaseMemberNames.sort();
        
        // Construct the team name using the first letter of each member's name
        
        for (String name : uppercaseMemberNames) {
            // Ensure the name is not empty
            if (!String.isEmpty(name)) {
                // Append the first letter of the name to the team name
                teamName += name.substring(0,1);
            }
        }
        
        return teamName;
    } 
}