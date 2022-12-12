import classes from "./../styles/RecommenderModel.module.css";
import { useMovies } from "../context/MoviesContext";
import Loader from "./Loader";

export default function UserRecommendations({ movies }) {

    const { loading } = useMovies();

    return <div className={classes.user_recommendations}>
        <div className={classes.header}>
            <h2>My Recommendations</h2>
        </div>

        {loading && <Loader />}

        {
            movies.map((item) => {
                return (
                    <div className={classes.recommendation} key={item.title}>
                        <div className={classes.movie_info}>
                            <h2>{item.title}</h2>
                            <div className={classes.genres}>
                                {item.genre.map((genre) => {
                                    return (
                                        <span className={classes.genre} key={genre}>{genre}</span>
                                    );
                                })}
                            </div>
                        </div>
                    </div>
                );
            })
        }
    </div>
}