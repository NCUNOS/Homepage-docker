FROM nginx:1.9

MAINTAINER Davy <me@davy.tw>

# Clone the newest application
RUN git clone https://github.com/NCUNOS/Homepage.git

# Copy into nginx www directory
COPY Homepage /usr/share/nginx/html

# Expose 80 port
EXPOSE 80

# Run the server on 80 port
CMD ["nginx", "-g", "daemon off;"]
