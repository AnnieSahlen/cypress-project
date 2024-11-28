// import { mount } from "@cypress/react";
// import { mount } from "cypress/react18";
import ChristmasMarkets from "../../src/components/ChistmasMarkets";

describe("ChristmasMarkets.cy.tsx", () => {
  it("mounts ChristmasMarkets and checks for text", () => {
    cy.mount(<ChristmasMarkets />);
    cy.get("h1").should("include.text", "Christmas Markets");
    cy.get("li").should("exist");
    cy.get("p").should("include.text", "Kronhusjul");
  });
});
