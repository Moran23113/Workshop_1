import React from 'react'
import { Routes, Route } from 'react-router-dom'
import PaginaPrincipal from './components/PaginaPrincipal'
import Pagina3 from './components/Pagina3'
import PaginaCalculadora from './components/PaginaCalculadora'
import './App.css'

function App() {
  return (
    <div className="App">
      <Routes>
        <Route path="/" element={<PaginaPrincipal />} />
        <Route path="/pagina3" element={<Pagina3 />} />
        <Route path="/calculadora" element={<PaginaCalculadora />} />
      </Routes>
    </div>
  )
}

export default App