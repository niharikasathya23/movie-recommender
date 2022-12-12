import React, { useContext, createContext, useState, useEffect } from "react";
import { movies as data } from "./../dummy/data.js";

const MoviesContext = createContext();

export const useMovies = () => useContext(MoviesContext);

export const MoviesProvider = ({ children }) => {
    const [movies, setMovies] = useState(data);
    const [userMovies, setUserMovies] = useState([]);
    const [recommendedMovies, setRecommendedMovies] = useState([]);
    const [loading, setLoading] = useState(false);
    const [noResults, setNoResults] = useState(false);

    useEffect(async () => {
        const response = await fetch("http://34.28.25.168:8000/autocomplete")
        const data = await response.json();
        setMovies(data);
    }, []);

    const getMovieId = (movie) => {
        return movies[movie]
    }

    async function postMovieRecommendations(movieIndexes) {
        let message;

        const response = await fetch("http://104.154.48.14:8000/movie/make_recom",
            {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(movieIndexes)
            })

        message = await response.json();
        while (message["status"] == "inProgress") {
            const response = await fetch("http://104.154.48.14:8000/status/" + message["jobId"])
            message = await response.json()
            await new Promise(r => setTimeout(r, 5000)); 
        }

        return message["recommendation"]
    }

    const loadRecommendedMovies = async () => {
        setLoading(true);
        const recom_index = [];
        let i;
        for (i = 0; i < userMovies.length; i++) {
            let movieIndex = getMovieId(userMovies[i])
            recom_index.push(movieIndex)
        }

        let newMovies = await postMovieRecommendations(recom_index)
        let recommendations = [];

        for (i = 0; i < newMovies.length; i++) {
            recommendations.push(newMovies[i])
        }
        
        setRecommendedMovies(recommendations);
        console.log(recommendations)
        setLoading(false);
        setNoResults(true);
    }

    const clearRecommendations = () => {
        setRecommendedMovies([]);
        setUserMovies([]);
        setNoResults(false);
    }

    return (
        <MoviesContext.Provider value={{ movies, setMovies, userMovies, setUserMovies, recommendedMovies, loadRecommendedMovies, clearRecommendations, loading, noResults }}>
            {children}
        </MoviesContext.Provider>
    );
};
