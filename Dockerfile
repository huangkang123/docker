FROM centos
RUN yum install nginx redis -y
COPY index.html /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
