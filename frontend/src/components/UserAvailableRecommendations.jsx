import classes from "./../styles/RecommenderModel.module.css";
import { useMovies } from "../context/MoviesContext";

export default function UserAvailableRecommendations({ movies }) {
    const { loadRecommendedMovies, noResults, clearRecommendations, setUserMovies } = useMovies();

    const deleteMovie = (movie) => {
        const newMovies = movies.filter((item) => {
            return item !== movie;
        });

        setUserMovies(newMovies);
    }


    return <div className={classes.user_available_recommendations}>
        <div className={classes.header}>
            <h2>My Movies</h2>
        </div>

        {
            noResults && <div className={classes.actions}>
                <button onClick={clearRecommendations}>Clear</button>
            </div>
        }

        {
            movies.map((item) => {
                return (
                    <div className={classes.recommendation} key={item} onDoubleClick={ () => deleteMovie(item) }>
                        <div className={classes.movie_info}>
                            <h2>{item}</h2>
                            {/* <div className={classes.genres}>
                                {item.genres.map((genre) => {
                                    return (
                                        <span className={classes.genre} key={genre}>{genre}</span>
                                    );
                                })}
                            </div> */}
                        </div>
                    </div>
                );
            })
        }

        <div className={classes.actions}>
            <button onClick={loadRecommendedMovies}>Recommend</button>
        </div>
    </div>
}