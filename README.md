# Shiny + Parcel

The `shiny-parcel-template` contains the basic structure for creating Shiny applications using the application bundler [parcel.js](https://parceljs.org). Using these tools is useful for optimizing CSS and JavaScript files, as well as integrating many other JavaScript plugins and libraries. Some of the key features are listed below.

- ✨ Sass enabled
- 🔥 Hot Module Replacement
- 📦 Shiny as a Package ([Golem](https://github.com/ThinkR-open/golem) style project structure)
- 😍 And much more!

This application uses the following tools.

- [Parceljs](https://parceljs.org)
- [Node and NPM](https://nodejs.org/en/)
- [Yarn](https://yarnpkg.com/en/)

This workspace is geared towards vscode, but can easily be adapted into a R project. If you decide to use vscode, I am using [radian](https://github.com/randy3k/radian) and [languageserver](https://github.com/REditorSupport/languageserver). Additional extensions can be found in the `.code-workspace` config file.

## Getting Started

### 1. Install Node and NPM

Make sure [Node and NPM](https://nodejs.org/en/) are installed on your machine. You may also use [Yarn](https://yarnpkg.com/en/). To test the installation or to see if these tools are already installed on your machine, run the following commands in the terminal.

```shell
node -v
npm -v
yarn -v
```

### 2. Clone the `shiny-parcel-template` repository

```shell
git clone https://github.com/davidruvolo51/shiny-parcel-template
```

### 3. Install dependencies

Next, install the npm packages that are required to run the app locally. I have decided to use [pnpm](https://github.com/pnpm/pnpm) to manage packages on my machine and across projects. To install `pnpm`, run the following command.

```shell
npm install -g pnpm
```

You will need to install the dependencies in the root directory.

```shell
pnpm install
```

If you prefer to use `npm`, use `npm` instead of `pnpm`.

### 4. Start the development servers

When everything is installed, start the parcel. Run the following command. Parcel will run on `localhost:1234` (the default).

```shell
yarn dev
```

Next, start a new R session. If you are using vscode, create a new second terminal. Open the `app.R` file and run both commands. This will run shiny at port `8000`.

Open your browser and type `http://localhost:8000`.
