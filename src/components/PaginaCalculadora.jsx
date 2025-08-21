import React, { useState } from 'react'
import { useNavigate } from 'react-router-dom'
import './PaginaCalculadora.css'

const PaginaCalculadora = () => {
  const [numero1, setNumero1] = useState('')
  const [numero2, setNumero2] = useState('')
  const [operacion, setOperacion] = useState(1)
  const [resultado, setResultado] = useState('')
  const navigate = useNavigate()

  const operaciones = [
    { value: 1, label: 'Suma', symbol: '+' },
    { value: 2, label: 'Resta', symbol: '-' },
    { value: 3, label: 'Multiplicación', symbol: '×' },
    { value: 4, label: 'División', symbol: '÷' }
  ]

  const calcular = () => {
    const num1 = parseFloat(numero1)
    const num2 = parseFloat(numero2)

    if (isNaN(num1) || isNaN(num2)) {
      alert('Por favor ingresa números válidos')
      return
    }

    let res = 0
    switch (operacion) {
      case 1:
        res = num1 + num2
        break
      case 2:
        res = num1 - num2
        break
      case 3:
        res = num1 * num2
        break
      case 4:
        if (num2 === 0) {
          alert('No se puede dividir por cero')
          return
        }
        res = num1 / num2
        break
      default:
        res = 0
    }

    setResultado(res.toString())
  }

  const limpiar = () => {
    setNumero1('')
    setNumero2('')
    setResultado('')
    setOperacion(1)
  }

  return (
    <div className="calculadora">
      <div className="page-header">
        <button 
          className="back-button"
          onClick={() => navigate('/')}
        >
          ← Volver
        </button>
        <h2>🧮 Calculadora</h2>
      </div>

      <div className="calculator-container">
        <div className="calculator-card">
          <div className="input-section">
            <div className="input-group">
              <label>Primer Número</label>
              <input
                type="number"
                value={numero1}
                onChange={(e) => setNumero1(e.target.value)}
                placeholder="0"
                className="number-input"
              />
            </div>

            <div className="operation-selector">
              <label>Operación</label>
              <select 
                value={operacion} 
                onChange={(e) => setOperacion(parseInt(e.target.value))}
                className="operation-select"
              >
                {operaciones.map(op => (
                  <option key={op.value} value={op.value}>
                    {op.symbol} {op.label}
                  </option>
                ))}
              </select>
            </div>

            <div className="input-group">
              <label>Segundo Número</label>
              <input
                type="number"
                value={numero2}
                onChange={(e) => setNumero2(e.target.value)}
                placeholder="0"
                className="number-input"
              />
            </div>
          </div>

          <div className="result-section">
            <label>Resultado</label>
            <div className="result-display">
              {resultado || '0'}
            </div>
          </div>

          <div className="button-section">
            <button 
              className="calculate-button"
              onClick={calcular}
            >
              <span className="button-icon">🔢</span>
              Calcular
            </button>
            <button 
              className="clear-button"
              onClick={limpiar}
            >
              <span className="button-icon">🗑️</span>
              Limpiar
            </button>
          </div>
        </div>

        <div className="calculator-info">
          <h3>📊 Operaciones disponibles</h3>
          <div className="operations-grid">
            {operaciones.map(op => (
              <div key={op.value} className="operation-item">
                <span className="operation-symbol">{op.symbol}</span>
                <span className="operation-name">{op.label}</span>
              </div>
            ))}
          </div>
        </div>
      </div>
    </div>
  )
}

export default PaginaCalculadora