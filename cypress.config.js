const { defineConfig } = require("cypress");
const { addCucumberPreprocessorPlugin } = require ('@badeball/cypress-cucumber-preprocessor');
const { createEsbuildPlugin } = require('@badeball/cypress-cucumber-preprocessor/esbuild');
const createBundler = require('@bahmutov/cypress-esbuild-preprocessor');

module.exports = defineConfig({
  e2e: {
    env: {
      apiBaseUrl: 'https://raromdb-frontend-c7d7dc3305a0.herokuapp.com'
    },
    specPattern: 'cypress/e2e/**/*.feature',
    async setupNodeEvents(on, config){
      await addCucumberPreprocessorPlugin(on, config);

      on('file:preprocessor', createBundler({ plugins: [createEsbuildPlugin(config)]}));

      return config;

    }
  },
});
