# HPR cloud node — container image (Koyeb free instance; also valid for Cloud Run free tier).
# HONEST LABELS: free instance sleeps after idle (first hit wakes it); disk is EPHEMERAL.
# kv = null: READ-ONLY verify-and-receive soil at the base book.
FROM node:22-slim
WORKDIR /app
COPY . /app
ENV HPR_OVERLAY=/data/overlay.json
EXPOSE 8000
CMD ["node", "server.mjs"]
