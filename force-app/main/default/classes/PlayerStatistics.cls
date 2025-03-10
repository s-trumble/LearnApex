public with sharing class PlayerStatistics {
    private Map<String, List<Integer>> pointsScored;
    
    // Constructor
    public PlayerStatistics() {
        pointsScored = new Map<String, List<Integer>>();
    }

    public void addGamePoints(String playerName, Integer points) {
        if (pointsScored.containsKey(playerName)) {
            // Player exists, so get their list and add the new points
            List<Integer> playerPoints = pointsScored.get(playerName);
            playerPoints.add(points);
            // No need to put back since lists are reference types
        } else {
            // Player doesn't exist, create new list with the points
            List<Integer> playerPoints = new List<Integer>();
            playerPoints.add(points);
            pointsScored.put(playerName, playerPoints);
        }
    }

    public Map<String, Decimal> averagePointsScored() {
        Map<String, Decimal> averagePointsMap = new Map<String, Decimal>();
        
        for(String player : pointsScored.keySet()) {
            List<Integer> playerPoints = pointsScored.get(player);
            Integer totalPoints = 0;
            Integer totalGames = playerPoints.size();
            
            // Sum up all points for this player
            for(Integer point : playerPoints) {
                totalPoints += point;
            }
            
            // Calculate average and add to result map
            Decimal average = totalGames > 0 ? (Decimal)totalPoints / totalGames : 0;
            averagePointsMap.put(player, average);
        }
        
        return averagePointsMap;
    }
}