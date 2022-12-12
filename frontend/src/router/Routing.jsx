import React from "react";
import RecommenderModel from "./routes/RecommenderModel";

const routes = [
    {
      path: "/",
      element: <RecommenderModel />,
    }
];

export const getRouting = () => routes;