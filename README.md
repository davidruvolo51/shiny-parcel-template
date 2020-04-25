# Shiny App Template

This repo contains the basic files and project structure for creating custom shiny apps. This template uses the application bundler [parcel.js](https://parceljs.org) to build static assets using various javascript and css plugins.

## Features

1. **SCSS**: All css styles are written using scss (`src/styles`). Parcel watches the `index.scss` file for changes and rebuilds when the file is resaved. A number of plugins are used for browser optimization (see `package.json`). As a result, the output file is a minified, auto-prefixed css file (see: `www/css/styles.min.css`).
2. **JS**: All javascript is written in using a source js file (`src/js/index.js`). Like css, parcel watches for any changes in the index.js file and rebuilds the output file. Babeljs is used for creating a browser optimized and minified javascript file.

By default, the static resources (i.e., css and js files) are referenced in the shiny ui by their minified file name (i.e., `styles.min.css`, `index.min.js`).

## Installation

1. Install the [Node and Npm](https://nodejs.org/en/download/) installer. You can skip this step if you already have node and npm installed. If you are unsure or would like to confirm the installation, run the following commands in the terminal.

```bash
node -v
npm -v
```

2. Install [parcel.js](https://parceljs.org/getting_started.html) using npm (this will install parcel globally).

```bash
npm install -g parcel-bundler
```

3. Clone this repository

```bash
git clone https://github.com/davidruvolo51/shiny-app-template
```

4. Install dependencies. This setup uses [babel.js](https://babeljs.io) and [SASS](https://sass-lang.com). These tools and dependencies are listed in the `package.json`. You will need to install these locally.

```bash
npm install
npm update
```

That is it! Steps 1 and 2 only need to be done once as these tools are installed globally. In the future, you will only need to run steps 3 and 4.

## Development

I strongly recommend using [tmux](https://github.com/tmux/tmux) to run more than one development script in parallel in separate terminal windows, but all in the same view. See the link and the repo's wiki for more information.

There are a number of development scripts listed in the `package.json` file. To see what they are, run `npm run`. I've included a number of shorthand scripts that may be useful for developing shiny apps. These are listed in the following table.

| Name | Command | Description
| :--- | :------ | :-----------
| shiny | `npm run shiny` | starts shiny server @port `localhost:8000`
| css | `npm run css` | starts parcel and compiles scss files from `src/styles/index.scss` to `www/css/styles.min.css`
| css_build | `npm run css_build` | builds scss files for production applications (outputs file to the same place as `npm run css`)
| css_clean | `npm run css_clean` | removes existing bundled files in `www/css/*` (recommended before running build scripts)
| js | `npm run js` | starts parcel and compiles js files from `src/js/index.js` to `www/js/index.min.js`
| js_build | `npm run js_build` | builds js files for production (outputs file to the same place as `npm run js`)
| js_clean | `npm run js_clean` | removes existing files in `www/js/*` (recommended before running build scripts)
| build | `npm run build` | runs `css_build` and `js_build`

### Plugins

The following plugins were installed.

```bash
# babel
npm i --save-dev @babel/core @babel/cli
npm i @babel/preset-env --save-dev
npm i babel-preset-minify --save-dev

# css
npm i postcss-modules
npm i autoprefixer
npm i node-sass
```

## Prepping the Template

This template comes with some sample code (i.e., generic UI, some styles, and js) that demonstrates how to run the tools and make changes. The sample code isn't really necessary and can be removed by running the following commands.

```bash
# remove built files
npm run css_clean && npm run js_clean

# delete and create index.js file
rm src/js/index.js
touch src/js/index.js

# delete and recreate the minimum required scss file
rm src/styles/*
touch src/styles/index.scss
```

I prefer to isolate styles by component and working with a `_variables` file. This is easier for managing large projects. You can recreate these files by running the following commands.

```bash
# create base and _variables
touch src/styles/_base.scss src/styles/_variables.scss
```

In the `index.scss` file, copy the following code.

```scss

// import variables first
@import "_variables";

// load other component-based files
@import "_base";
```

Copy the following code into the `_base.scss` files.

```scss
// _base.scss
html, body {
    padding: 0;
    margin: 0;
    font-size: 16pt;
}
```

Define scss variables in the `_variables.scss` file.

