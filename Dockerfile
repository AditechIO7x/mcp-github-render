FROM node:20-slim

WORKDIR /app

RUN npm install -g supergateway @modelcontextprotocol/server-github

ENV PORT=10000

EXPOSE 10000

CMD ["sh", "-c", "supergateway --port $PORT --cmd 'npx -y @modelcontextprotocol/server-github'"]
