# Use the Official Flutter Docker image
FROM cirrusci/flutter:latest


#Se the working directory in the Container
WORKDIR /app


#Copy the Flutter project into the Container
COPY . .


#Ensure Flutter is properly set up
RUN flutter doctor --android-licenses
RUN flutter pub get



# Expose the port the Flutter app runs on (e.g., 8080: for web apps)
#Expose 8080



# Run the Flutter app (default to running as a web app)
#CMD ["flutter", "run", "-d", "web-server", "--web-port", "8080", "--web-hostname", "0.0.0.0"]
CMD ["flutter", "run"]
