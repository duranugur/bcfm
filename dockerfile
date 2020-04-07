FROM java:8  
COPY . /var/www/java  
WORKDIR /var/www/java
args:
      BRANCH: "{{ .Branch }}"
RUN yarn build:BRANCH
RUN javac hello.java
CMD ["java", "hello"] 
