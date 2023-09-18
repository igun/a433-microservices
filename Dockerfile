# Docker dibuat menggunakan base image nodejs versi 14
FROM node:14-alpine
# Set container working directory
WORKDIR /app
# copy source code ke working directory di container
COPY . .
# Set environment variable yang digunakan oleh aplikasi
ENV NODE_ENV=production DB_HOST=item-db
# Install npm dependency kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build
# Set expose port yang digunakan aplikasi
EXPOSE 8080
# menjalankan aplikasi 
CMD ["npm", "start"]