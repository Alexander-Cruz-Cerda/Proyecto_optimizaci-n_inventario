# 📦 Proyecto de Optimización y Diagnóstico de Inventario

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Alexander%20Cruz-0A66C2?style=for-the-badge&logo=linkedin)](https://www.linkedin.com/in/alexandercruz-cc)
[![GitHub](https://img.shields.io/badge/GitHub-Alexander--Cruz--Cerda-181717?style=for-the-badge&logo=github)](https://github.com/Alexander-Cruz-Cerda)
[![Canva Dashboard](https://img.shields.io/badge/Canva-Presentación%20%26%20Dashboard-00C4CC?style=for-the-badge&logo=canva)](https://canva.link/nrnps4gw77utuvv)

---

## 📌 Descripción del Proyecto

Este proyecto consiste en un análisis analítico y diagnóstico integral de inventario para una tienda minorista multicategoría (Audio, Cables, Energía, Gadgets, Accesorios, Gamer). A través del análisis de datos de ventas, márgenes, tasas de rotación e índices de devolución, el modelo categoriza el catálogo de productos en **tres pilares estratégicos** para optimizar la toma de decisiones financieras y operativas.

El objetivo principal es identificar fugas de capital, liberar inventario obsoleto e impulsar la rentabilidad global mediante una segmentación clara del portafolio.

---

## 🎯 Pilares Clave del Diagnóstico

El análisis segmenta los productos en tres categorías críticas:

| Categoría | Descripción | Criterio de Clasificación | Impacto en el Negocio |
| :--- | :--- | :--- | :--- |
| **🚀 Productos Héroes** | Productos de alto rendimiento y rentabilidad. | Alta rotación, bajo índice de devolución o elevada ganancia total. | Motores de flujo de caja y rentabilidad. Deben asegurar stock continuo. |
| **💀 Productos Muertos** | Inventario estancado de baja demanda. | Baja rotación y acumulación prolongada en almacén. | Capital inmovilizado y costos logísticos de almacenamiento excesivos. |
| **⚠️ Productos que Matan** | Productos problemáticos con fallas de calidad o satisfacción. | Alto índice de devoluciones y reclamos. | Destruyen margen por logística inversa y deterioran la reputación de la marca. |

---

## 🛠️ Tecnologías y Herramientas Utilizadas

* **Lenguaje de Programación:** Python 3.10+
* **Análisis de Datos:** `pandas`, `numpy`
* **Visualización de Datos:** `matplotlib`, `seaborn`
* **Entorno de Desarrollo:** Jupyter Notebook
* **Dashboard & Presentación Executiva:** [Canva Link](https://canva.link/nrnps4gw77utuvv)

---

## 🔬 Metodología de Simulación de Datos

Para desarrollar y validar el modelo diagnóstico, se estructuró un conjunto de datos sintéticos representativo de 1,000 productos (`PROD-001` a `PROD-1000`) distribuidos en 6 categorías principales:
1. `AUDIO`
2. `CABLES`
3. `ENERGIA`
4. `GADGETS`
5. `ACCESORIOS`
6. `GAMER`

### Lógica Financiera e Imputación de Precios
* **Distribución Base:** Se utiliza una distribución Beta ($a=0.5, b=40$) multiplicada por una escala máxima para simular el comportamiento de precios en electrónica de consumo.
* **Productos Low-Cost:** Ajuste de precios de entrada ($\$49$ - $\$399$) para artículos de alta rotación (cables, accesorios).
* **Línea Premium:** Inclusión controlada de un 10% de productos gama alta con precios entre $\$14,000$ y $\$20,000$.
* **Reproducibilidad:** Semilla aleatoria fijada (`np.random.seed(42)`) para garantizar coherencia en la ejecución.

---

## 📊 Métricas e Indicadores Clave de Desempeño (KPIs)

1. **Índice de Rotación de Inventario:** Frecuencia con la que el inventario se vende y se reemplaza.
2. **Tasa de Devolución (%):** Porcentaje de unidades devueltas sobre el total de ventas.
3. **Margen de Ganancia Total ($):** Ganancia neta aportada por producto tras descontar costos logísticos e impactos de devoluciones.
4. **Matriz de Diagnosticabilidad:** Cruce bidimensional entre **Rotación** y **Rentabilidad**.

---

## 🚀 Instalación y Ejecución

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Alexander-Cruz-Cerda/Proyecto-optimizacion-inventario.git
   cd Proyecto-optimizacion-inventario
   ```

2. **Instalar dependencias:**
   ```bash
   pip install pandas numpy matplotlib seaborn jupyter
   ```

3. **Ejecutar el Notebook:**
   ```bash
   jupyter notebook
   ```

---

## 💡 Recomendaciones Estratégicas

* **Estrategia para Héroes:** Mantener niveles de stock de seguridad (*Safety Stock*) y explorar empaquetado (*bundling*) con productos de menor rotación.
* **Estrategia para Muertos:** Realizar promociones, descuentos por liquidación o descontinuación gradual para recuperar liquidez.
* **Estrategia para "Productos que Matan":** Auditoría de proveedores, revisión de control de calidad o retiro inmediato del catálogo para frenar la pérdida por devoluciones.

---

## 👤 Autor y Contacto

**Alexander Cruz Cerda**  
* **LinkedIn:** [alexandercruz-cc](https://www.linkedin.com/in/alexandercruz-cc)  
* **GitHub:** [Alexander-Cruz-Cerda](https://github.com/Alexander-Cruz-Cerda)  
* **Presentación y Dashboard:** [Visualizar en Canva](https://canva.link/nrnps4gw77utuvv)
