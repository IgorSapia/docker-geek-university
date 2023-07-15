#qual imagem vai usar
FROM postgres:13.1-alpine

#infos do criador desse container
LABEL maintainer "Igor Sapia <igor.sapia@gmail.com>"

#dados de comunicação c/ o DB, projeto deve ter esses dados
ENV POSTGRES_USER=fusion_user
ENV POSTGRES_PASSWORD=fusion_pass
ENV POSTGRES_DB=fusion_app

#exponha a porta 5432, para ser usada quando a img for rodar p/ ser um container
EXPOSE 5432
