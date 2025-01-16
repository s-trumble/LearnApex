public with sharing class WeatherPattern {
    public String identifyWeatherPattern(List<String> weather) {
        if(weather == null || weather.isEmpty() || weather.size() != 7){
            return 'No recognizable pattern';
        }
        String result;
        Integer streakLength = 3;
        Integer sunnyStreak = 0;
        Integer rainyStreak = 0;
        Boolean  alternateStreak = true;
        for(Integer i = 0; i < weather.size() ; i++){
            if(weather[i] == 'Sunny'){
                    sunnyStreak++;
                    rainyStreak = 0;
            } else if(weather[i] == 'Rainy'){
                sunnyStreak = 0;
                rainyStreak++;
            } else {
               return 'No recognizable pattern';
            }

            if(sunnyStreak == streakLength){
                return 'Sunny Streak';
            } 
            if(rainyStreak == streakLength){
                return 'Rainy Streak';
            }
            if(i > 0 && weather[i] == weather[i-1]){
                alternateStreak = false;
            }
        }
        if(alternateStreak){
            return 'Alternating Pattern';
        }
        return 'No recognizable pattern';
    }
}