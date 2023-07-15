#qual imagem vai usar
FROM python:3.9.0-alpine

#infos do criador desse container
LABEL maintainer "Igor Sapia <igor.sapia@gmail.com>"

#pedindo para copiar tudo que tiver em view dentro no nginx/html
COPY geekUniversityProject /var/www
# COPY . /usr/share/nginx/html -> por padrão usaria isso, mas esse projeto está estranho kkkk

#definindo qual vai ser a pasta de trabalho (Exec o RUN)
WORKDIR /var/www

#linha de comando lida sequencialmente a cada &&
RUN apk update && apk add zlib-dev jpeg-dev gcc musl-dev && pip install -r requirements.txt && python manage.py migrate

#endereço que isso vai rodar
ENTRYPOINT python manage.py runserver 0.0.0.0:8000

#exponha a porta 8000, para ser usada quando a img for rodar p/ ser um container
EXPOSE 8000
