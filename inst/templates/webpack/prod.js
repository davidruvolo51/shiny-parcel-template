// load
const TerserPlugin = require("terser-webpack-plugin");
const OptimizeCssAssetsPlugin = require("optimize-css-assets-webpack-plugin");

// config
module.exports = {
    mode: "production",
    optimization: {
        minimize: true,
        minimizer: [
            new OptimizeCssAssetsPlugin(),
            new TerserPlugin()
        ]
    },
}