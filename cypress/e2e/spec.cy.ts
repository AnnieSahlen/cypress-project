describe("Christmas Markets project", function () {
  it("visits my site, finds content, navigates to Home and Calendar", function () {
    cy.visit("http://localhost:5173/");
    cy.contains("Christmas Markets");
    cy.contains("Calendar").click();
    cy.url().should("include", "/calendar");
    cy.contains("Home").click();
  });
});
