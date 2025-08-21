import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import './Pagina1.css'

const Pagina1 = () => {
  const [drawerOpen, setDrawerOpen] = useState(false)
  const navigate = useNavigate()

  return (
    <div className="pagina1">
      <div className="page-header">
        <button 
          className="menu-button"
          onClick={() => setDrawerOpen(!drawerOpen)}
        >
          ☰
        </button>
        <h2>Página 1</h2>
      </div>

      {drawerOpen && (
        <div className="drawer-overlay" onClick={() => setDrawerOpen(false)}>
          <div className="drawer" onClick={(e) => e.stopPropagation()}>
            <div className="drawer-header">
              <h3>Menú</h3>
              <button 
                className="close-button"
                onClick={() => setDrawerOpen(false)}
              >
                ✕
              </button>
            </div>
            <div className="drawer-content">
              <button 
                className="drawer-item"
                onClick={() => {
                  navigate('/calculadora')
                  setDrawerOpen(false)
                }}
              >
                🧮 Calculadora
              </button>
            </div>
          </div>
        </div>
      )}

      <div className="page-content">
        <div className="welcome-card">
          <h3>¡Bienvenido a la Página 1!</h3>
          <p>Esta es la primera página de la aplicación. Usa el menú hamburguesa para navegar a la calculadora.</p>
          <div className="feature-list">
            <div className="feature-item">
              <span className="feature-icon">📱</span>
              <span>Interfaz moderna y responsive</span>
            </div>
            <div className="feature-item">
              <span className="feature-icon">🎨</span>
              <span>Diseño elegante con animaciones</span>
            </div>
            <div className="feature-item">
              <span className="feature-icon">⚡</span>
              <span>Navegación rápida y fluida</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  )
}

export default Pagina1