FROM node:20-slim

WORKDIR /app

RUN npm install -g supergateway @modelcontextprotocol/server-github

CMD ["supergateway", "--stdio", "npx", "-y", "@modelcontextprotocol/server-github", "--port", "8080"]
