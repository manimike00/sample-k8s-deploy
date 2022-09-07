FROM alpine:3.14 as creator

WORKDIR /app

RUN date > index.html
RUN echo "Azure Devops with AKS deployment" >> index.html

FROM nginx:stable-alpine 

COPY --from=creator /app/index.html /usr/share/nginx/html/index.html

