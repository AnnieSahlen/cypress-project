import "./App.css";
import React from "react";
import ChristmasMarkets from "./components/ChistmasMarkets";
import ChristmasCalendar from "./components/ChristmasCalendar";

import {
  createHashRouter,
  Link,
  Outlet,
  RouterProvider,
} from "react-router-dom";

const Root: React.FC = () => {
  return (
    <>
      <nav>
        <Link to="/">Home</Link>
        <Link to="/calendar">Calendar</Link>
      </nav>
      <main>
        <Outlet />
      </main>
    </>
  );
};

const App: React.FC = () => {
  const router = createHashRouter([
    {
      children: [
        { element: <ChristmasMarkets />, path: "/" },
        { element: <ChristmasCalendar />, path: "/calendar" },
      ],
      element: <Root />,
    },
  ]);

  return <RouterProvider router={router} />;
};

export default App;
