public class FilmAnalytics {
    private Map<String, Integer> filmViewings;

    public FilmAnalytics() {
        filmViewings = new Map<String, Integer>();
    }

    public void addFilmViewing(String filmName, Integer viewingCount) {
        if (filmViewings.containsKey(filmName)) {
            filmViewings.put(filmName, filmViewings.get(filmName) + viewingCount);
        } else {
            filmViewings.put(filmName, viewingCount);
        }
    }

    public List<String> mostWatchedFilms() {
        //create list of film names
        List<String> films = new List<String>(filmViewings.keySet());
        films.sort();
        //create list of viewcounts
        List<Integer> viewCounts = new List<Integer>(filmViewings.values());
        viewCounts.sort();

        //initiliaize empty set
        Set<String> topFilms = new Set<String>();
        for (Integer i = viewCounts.size() - 1; i >= 0 && topFilms.size() < 3; i--) {
            Integer viewCount = viewCounts[i];
            for (String film : films) {
                if (filmViewings.get(film) == viewCount && !topFilms.contains(film)) {
                    topFilms.add(film);
                    break;
                }
            }
        }

        return new List<String>(topFilms);
    }
}