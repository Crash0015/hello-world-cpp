# Use a base image of GCC (GNU Compiler Collection) for C++
FROM gcc:latest

# Create a directory for the application
WORKDIR /app

# Copy the C++ source file to the container
COPY hello.cpp .

# Compile the C++ program
RUN g++ -o hello hello.cpp

# Define the command to run the program
CMD ["./hello"]
