FROM ubuntu:latest 
# es la imagen que descargamos
LABEL project = "nuclio-flask-api"
LABEL version="1.0"
RUN apt update -y
# yes a todo
RUN apt install -y python3-pip
COPY . /app
# copia todo a la ruta app
WORKDIR /app
# definir el app como directorio de trabajo
RUN pip3 install -r requirements.txt
# instalar librerías. la última al momento de escribirlo
ENTRYPOINT ["python3"] 
# me vas a abrir la consola de comandos de python
CMD ["app.py"] 
# es nestro servidor web
