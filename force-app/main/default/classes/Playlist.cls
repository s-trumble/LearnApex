public with sharing class Playlist {
    public List<Integer> durations;
    public Playlist() {
        durations = new List<Integer>();
    }

    //in seconds
    public void addDuration(Integer duration){
        durations.add(duration);
    }

    public Decimal totalDuration(){
        Integer totalSeconds = 0;
        for(Integer duration : durations){
            totalSeconds += duration;
        }
        Decimal totalMinutes = totalSeconds / 60.0;
        return totalMinutes;
    }
}