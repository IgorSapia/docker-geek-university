#qual imagem vai usar
FROM nginx:1.19.4-alpine

#infos do criador desse container
LABEL maintainer="Igor Sapia <igor.sapia@gmail.com>"

#pedindo para copiar tudo que tiver em view dentro no nginx/html
COPY view /usr/share/nginx/html
# COPY . /usr/share/nginx/html -> por padrão usaria isso, mas esse projeto está estranho kkkk


#exponha a porta 80, para ser usada quando a img for rodar p/ ser um container
EXPOSE 80
