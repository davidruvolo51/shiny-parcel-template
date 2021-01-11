// config for dev environment
module.exports = {
    mode: "development",
    output: {
        filename: "${filename}",
    },
    devServer: {
        port: 1234,
        hot: true,
        writeToDisk: true // for use in shiny-dev
    }
}
