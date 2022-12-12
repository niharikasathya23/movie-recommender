import React, { useState } from 'react';
import classes from "./../styles/SearchBar.module.css";
import { useMovies } from "../context/MoviesContext";

export default function SearchBar() {
    const { movies, setUserMovies, userMovies } = useMovies();
    const [searchResults, setSearchResults] = useState([]);
    const [searchQuery, setSearchQuery] = useState("");

    const handleSearch = (event) => {
        const searchQuery = event.target.value.toLowerCase();
        setSearchQuery(searchQuery);

        if (searchQuery.length === 0) {
            setSearchResults([]);
            return;
        }

        const filteredMovies = Object.entries(movies).filter((movie) => {
            return movie[0].toLowerCase().includes(searchQuery) && !userMovies.includes(movie[0]);
        }).map(
            (movie) => {
                return {
                    id: movie[1],
                    title: movie[0]
                }
            }
        );

        setSearchResults(filteredMovies.slice(0, 10));

    }

    const addMovie = (event) => {
        clearResults();
        if (event.target.tagName !== "LI") {
            const movieTitle = event.target.value;
            setUserMovies([...userMovies, movieTitle]);
            return;
        }
        const movieTitle = event.target.innerText;
        setUserMovies([...userMovies, movieTitle]);
    }

    const clearResults = () => {
        setSearchResults([]);
        setSearchQuery("");
    }

    return (
        <div className={classes.search_bar}>
            <input type="text" placeholder="Search for a movie" value={searchQuery} onChange={handleSearch} onDoubleClick={addMovie} />
            <div className={classes.search_results}>
                <ul>
                    {
                        searchResults.map((movie) => {
                            return <li key={movie.id} onClick={addMovie} >{movie.title}</li>
                        })
                    }
                </ul>
            </div>
        </div>
    );
}