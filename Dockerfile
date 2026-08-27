# Usar una imagen oficial de Python ligera
FROM python:3.12-slim

# Configurar el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de dependencias e instalarlas
COPY requierements.txt .
RUN pip install --no-cache-dir -r requierements.txt

# Copiar el resto del código del proyecto
COPY . .

# Comando por defecto al iniciar el contenedor (puedes cambiarlo según requieras)
CMD ["python", "main.py"]
