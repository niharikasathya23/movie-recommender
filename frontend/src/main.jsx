import React from 'react'
import ReactDOM from 'react-dom/client'
import './styles/index.css'

import {
  createBrowserRouter,
  RouterProvider,
} from "react-router-dom";

import { getRouting } from './router/Routing';
import { MoviesProvider } from './context/MoviesContext';

const router = createBrowserRouter( getRouting() );

ReactDOM.createRoot(document.getElementById('root')).render(
  <MoviesProvider>
  <RouterProvider router={router} /> 
</MoviesProvider>,
)
