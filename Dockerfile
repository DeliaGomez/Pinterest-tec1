# Usa una imagen base de Python
FROM python:3.12-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo de requisitos y el código de la aplicación
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY templates/ templates/
COPY static/ static/
# Pinning Flask and Werkzeug versions

RUN pip install Flask==3.1.0 Werkzeug==3.1
# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 8000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]