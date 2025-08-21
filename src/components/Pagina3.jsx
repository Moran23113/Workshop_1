import React, { useState, useEffect } from 'react'
import { useLocation, useNavigate } from 'react-router-dom'
import './Pagina3.css'

const Pagina3 = () => {
  const [textoRespuesta, setTextoRespuesta] = useState('')
  const location = useLocation()
  const navigate = useNavigate()
  
  const textoRecibido = location.state?.textoEnviado || 'No se recibió texto'

  const devolverRespuesta = () => {
    if (!textoRespuesta.trim()) {
      alert('Por favor ingresa una respuesta')
      return
    }

    // Simular devolución de respuesta
    if (location.state?.onReturn) {
      location.state.onReturn(textoRespuesta)
    }
    
    navigate('/')
  }

  return (
    <div className="pagina3">
      <div className="page-header">
        <button 
          className="back-button"
          onClick={() => navigate('/')}
        >
          ← Volver
        </button>
        <h2>Recibido de página 2</h2>
      </div>

      <div className="page-content">
        <div className="received-section">
          <h3>📨 Texto recibido:</h3>
          <div className="received-text">
            {textoRecibido}
          </div>
        </div>

        <div className="response-section">
          <div className="input-group">
            <label htmlFor="respuesta-input">Texto de vuelta</label>
            <textarea
              id="respuesta-input"
              value={textoRespuesta}
              onChange={(e) => setTextoRespuesta(e.target.value)}
              placeholder="Escribe tu respuesta aquí..."
              className="response-input"
              rows="4"
            />
          </div>

          <button 
            className="return-button"
            onClick={devolverRespuesta}
          >
            <span className="button-icon">↩️</span>
            Devolver
          </button>
        </div>

        <div className="info-card">
          <h4>🔄 Flujo de datos</h4>
          <p>Esta página recibe datos de la Página 2, permite procesarlos y enviar una respuesta de vuelta.</p>
        </div>
      </div>
    </div>
  )
}

export default Pagina3