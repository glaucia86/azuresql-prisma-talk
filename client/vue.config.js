module.exports = {
  devServer: {
    proxy: {
      "/api": {
        target: "http://localhost:7071/api",
        changeOrigin: true
      }
    }
  }
};
