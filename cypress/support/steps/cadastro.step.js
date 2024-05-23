import CadastrarPage from "../page/cadastrar.page";
const paginaCadastrar = new CadastrarPage();
import {
  Given,
  When,
  Then,
  Before,
  After,
} from "@badeball/cypress-cucumber-preprocessor";
const { faker } = require("@faker-js/faker");
const usuario = {
  name: `${faker.person.firstName()}Teste`,
  email: "",
};

var novoEmail;

beforeEach(() => {
  Given("que acessei o sistema Raro Filmes", function () {
    cy.visit("/register");
  });
});

When("eu selecionar a opção registre-se", function () {});

When("incluir um novo nome", function () {});
