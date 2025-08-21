import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import Pagina1 from './Pagina1'
import Pagina2 from './Pagina2'
import './PaginaPrincipal.css'

const PaginaPrincipal = () => {
  const [activeTab, setActiveTab] = useState(0)

  return (
    <div className="pagina-principal">
      <div className="app-bar">
        <h1>Navegar</h1>
        <div className="tab-bar">
          <button 
            className={`tab ${activeTab === 0 ? 'active' : ''}`}
            onClick={() => setActiveTab(0)}
          >
            <span className="tab-icon">1️⃣</span>
            Página 1
          </button>
          <button 
            className={`tab ${activeTab === 1 ? 'active' : ''}`}
            onClick={() => setActiveTab(1)}
          >
            <span className="tab-icon">2️⃣</span>
            Página 2
          </button>
        </div>
      </div>
      
      <div className="tab-content">
        {activeTab === 0 && <Pagina1 />}
        {activeTab === 1 && <Pagina2 />}
      </div>
    </div>
  )
}

export default PaginaPrincipal