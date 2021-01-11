// pkgs
const { merge } = require("webpack-merge");
const commonConfig = require("./config/webpack.common");

// load config based on environment
module.exports = (env) => {
    const config = require("./config/webpack." + env);
    return merge(commonConfig, config);
}