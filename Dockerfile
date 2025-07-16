# Use Maven with Java 17 (required for Jenkins plugin builds)
FROM maven:3.9.6-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /ssh-agent-plugin

# Copy all plugin source code into the container
COPY . .

# Run Maven test (will use jenkins-test-harness)
CMD ["mvn", "test"]
