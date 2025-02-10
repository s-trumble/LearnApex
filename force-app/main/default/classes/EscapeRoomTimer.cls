public with sharing class EscapeRoomTimer {
    public EscapeRoomTimer() {

    }

    public String escapeRoomTimer(List<Integer> timesInSeconds){
        Integer totalSeconds = 0;

        if(timesInSeconds == null || timesInSeconds.isEmpty()){
            return '00:00';
        }

        for(Integer timeInSeconds : timesInSeconds){
            totalSeconds += timeInSeconds;
        }
        Integer minutes = totalSeconds/60;
        Integer remainingSeconds = Math.mod(totalSeconds, 60);

        String escapeTime = '';
        //add minutes to time
        if(minutes < 10 ){
            escapeTime += '0' + minutes;
        } else {
            escapeTime += minutes;
        }
        // add colon
        escapeTime += ':';
        //add seconds
        if(remainingSeconds < 10){
            escapeTime += '0' + remainingSeconds;
        } else {
            escapeTime += remainingSeconds;
        }
        return escapeTime;
    }
}