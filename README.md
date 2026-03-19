PERFORATION STABILIZER PARA MAC
===============================

Archivos incluidos:
- perforation_stabilizer_app.py
- Perforation_Stabilizer.command

Qué hace:
- Abres el launcher .command con doble clic
- Se abre una ventana
- Arrastras la carpeta de frames o la eliges con botón
- El programa detecta la perforación izquierda
- Fija la perforación en una posición constante en toda la secuencia
- Guarda todo en una carpeta nueva automáticamente

Si macOS bloquea el launcher:
1. Clic derecho sobre Perforation_Stabilizer.command
2. Open / Abrir
3. Confirmar

Si no abre por permisos, en Terminal:
chmod +x /ruta/al/archivo/Perforation_Stabilizer.command

Dependencias:
El script intenta instalar automáticamente:
- opencv-python
- numpy
- tkinterdnd2 (opcional para arrastrar carpetas)

Si la función de arrastrar carpeta no aparece, igual puedes usar el botón "Elegir".

Ajustes recomendados para tus frames:
- ROI izq.: 0.22
- Threshold: 210
- Suavizado: 9

Si notas que no detecta bien la perforación:
- baja Threshold a 200 o 195
- si detecta cosas raras, sube Threshold a 215
- si quieres que busque más pegado a la izquierda, baja ROI a 0.18 o 0.20

Salida:
La carpeta de salida se crea junto a la carpeta original con el sufijo _ESTABILIZADO.
También se genera un archivo stabilization_report.txt con resumen del proceso.
