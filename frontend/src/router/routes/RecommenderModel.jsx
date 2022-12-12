import React from "react";
import classes from "./../../styles/RecommenderModel.module.css";
import UserAvailableRecommendations from "./../../components/UserAvailableRecommendations.jsx";
import UserRecommendations from "../../components/UserRecommendations";
import SearchBar from "../../components/SearchBar";
import { useMovies } from "../../context/MoviesContext";

export default function RecommenderModel() {
    const { userMovies, recommendedMovies } = useMovies();

    return (
        <div className={classes.body}>
            <div className={classes.container}>
                <nav className={classes.nav}>
                    <div className={classes.header}>
                        <h1>Movie Recommender</h1>

                        <div className={classes.search}>
                        <SearchBar />
                        </div>
                    </div>
                </nav>

                <div className={classes.content}>
                    <UserAvailableRecommendations movies={userMovies} />
                    <UserRecommendations movies={recommendedMovies} />
                </div>
            </div>
            
        </div>
    );
}