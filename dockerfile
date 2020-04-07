FROM java:8  
COPY . /var/www/java  
WORKDIR /var/www/java
RUN yarn build:master
RUN javac hello.java
CMD ["java", "hello"] 
