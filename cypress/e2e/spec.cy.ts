describe("Christmas Markets project", function () {
  it("visits the site, finds content, navigates to Home and Calendar", function () {
    cy.visit("http://localhost:5173/");
    cy.contains("Christmas Markets");
    cy.contains("Calendar").click();
    cy.url().should("include", "/calendar");
    cy.contains("Home").click();
    cy.get("h1").should("include.text", "Christmas Markets");
  });
  it("visits the site and renders data from database", function () {
    cy.visit("http://localhost:5173/");
    cy.get("ul").should("be.visible");
    cy.get("li").should("be.visible");
    cy.get("li").should("include.text", "Kronhusjul");
    cy.get("li").should("have.length", 9);
  });
});
