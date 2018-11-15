FROM maven
WORKDIR /opt
RUN git clone https://github.com/devgianlu/PYX-Reloaded.git
WORKDIR PYX-Reloaded
RUN mvn clean package
RUN mv preferences.json.default preferences.json
CMD java -jar /opt/PYX-Reloaded/target/PYX-Reloaded-jar-with-dependencies.jar