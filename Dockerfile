# which image to pull from a registry
FROM node

# change working directory inside an image
WORKDIR /usr/src/app

# installing our application / copying our code
COPY package*.json ./

# installation of another application
RUN npm install

# copy all the files from local inside the docker image
COPY . .

# enable outside world to connect to docker image
EXPOSE 4000

# the commands  you want to run inside your image
CMD [ "npm", "start"]


# Step 1:
    # Write a Dockerfile
# Step 2:
    # Build Docker image
    # docker build -t wshahid/simple_backend .
# Step 3:
    # Run the docker image
    # docker run -p 4000:4000 wshahid/simple_backend
# Step 4:
    # Look at the output
    # localhost:4000
