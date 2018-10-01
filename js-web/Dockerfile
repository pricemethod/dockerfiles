FROM js

# Build static file server
WORKDIR /app/serve
COPY serve/ ./
RUN npm install

# Copy scripts
WORKDIR /app
COPY scripts/ ./scripts

CMD node serve/index.js
