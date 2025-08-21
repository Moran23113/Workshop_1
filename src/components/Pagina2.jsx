import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import './Pagina2.css'

const Pagina2 = () => {
  const [texto, setTexto] = useState('')
  const [resultado, setResultado] = useState('------>Esperando Respuesta...<------')
  const navigate = useNavigate()

  const enviarTexto = async () => {
    if (!texto.trim()) {
      alert('Por favor ingresa algún texto')
      return
    }

    // Simular navegación a página 3 y obtener respuesta
    navigate('/pagina3', { state: { textoEnviado: texto, onReturn: setResultado } })
  }

  return (
    <div className="pagina2">
      <div className="page-header">
        <h2>Test envío de información</h2>
      </div>

      <div className="page-content">
        <div className="input-section">
          <div className="input-group">
            <label htmlFor="texto-input">Texto de prueba</label>
            <input
              id="texto-input"
              type="text"
              value={texto}
              onChange={(e) => setTexto(e.target.value)}
              placeholder="Escribe algo aquí..."
              className="text-input"
            />
          </div>

          <button 
            className="send-button"
            onClick={enviarTexto}
          >
            <span className="button-icon">📤</span>
            Enviar
          </button>
        </div>

        <div className="result-section">
          <h3>Resultado:</h3>
          <div className="result-display">
            {resultado}
          </div>
        </div>

        <div className="info-card">
          <h4>💡 Información</h4>
          <p>Esta página permite enviar texto a la Página 3 y recibir una respuesta de vuelta. Es un ejemplo de comunicación entre componentes.</p>
        </div>
      </div>
    </div>
  )
}

export default Pagina2