import React, { useEffect, useState } from "react";
import Market from "../props/Market";

const ChristmasMarkets: React.FC = () => {
  const [markets, setMarkets] = useState<Market[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const response = await fetch("http://localhost:3000/");
        if (!response.ok) {
          throw new Error("Något gick fel vid hämtning av data.");
        }
        const data: Market[] = await response.json();
        setMarkets(data);
      } catch (error) {
        if (error instanceof Error) {
          setError(error.message);
        } else {
          setError("Ett okänt fel uppstod.");
        }
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, []);

  if (loading) return <p>Laddar data...</p>;
  if (error) return <p>Ett fel uppstod: {error}</p>;

  return (
    <div>
      <h1>Christmas Markets Gothenburg 2024</h1>
      <ul>
        {markets.map((market) => (
          <li key={market.id}>
            <p>{market.name}</p>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default ChristmasMarkets;
