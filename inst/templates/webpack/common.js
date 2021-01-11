// load
const { CleanWebpackPlugin } = require("clean-webpack-plugin");
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const webpack = require("webpack");
const path = require("path");

// configuration
module.exports = {
    entry: "${entry}",
    output: {
        filename: "${filename}",
        path: path.join(__dirname, "..", "${outputPath}"),
    }  ,
    plugins: [
        new webpack.ProgressPlugin(),
        new CleanWebpackPlugin(),
        new MiniCssExtractPlugin({
            filename: "${filenameCss}",
            ignoreOrder: false,
        })
    ],
    module: {
        rules: [
            {
                test: /\.js$/,
                use: "babel-loader",
                exclude: /node_modules/,
            },
            {
                test: /\.s[ac]ss$/i,
                use: [
                    // write to file
                    {
                        loader: MiniCssExtractPlugin.loader,
                        options: {
                            publicPath: "${outputPath}"
                        }
                    },
                    "css-loader",
                    "postcss-loader",
                    "sass-loader",
                ]
            }
        ]
    }
}