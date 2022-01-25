import "../../Css/HeaderNavBar.css";
import { Link, Router } from "react-router-dom";
import React from "react";

export const HeaderNavBar = () => {
  const [changed, isChanged] = React.useState(false);
  const [role, setRole] = React.useState<string | null>("PARENT");

  const update = () => {
    isChanged(true);
  };

  React.useEffect(() => {
    setRole(localStorage.getItem("ROLE"));
  }, [role]);

  const AddClicked = (stringToContain: string): string => {
    if (changed) isChanged(false);
    return window.location.pathname.includes(stringToContain) ? "clicked" : "";
  };

  return (
    <ul className="navbar flex flex-row">
      <li className={AddClicked("ballina")}>
        <Link onClick={update} to="/ballina">
          Ballina
        </Link>
      </li>
      <li className={AddClicked("about")}>
        <Link onClick={update} to="/about">
          Rreth shkollës
        </Link>
      </li>
      {role === "PARENT" && (
        <li className={AddClicked("femijet")}>
          <Link onClick={update} to="/femijet">
            Fëmijët tuaj
          </Link>
        </li>
      )}
      {role === "ADMIN" && (
        <li className={AddClicked("menaxho")}>
          <Link onClick={update} to="/menaxho">
            Menaxho shkollën
          </Link>
        </li>
      )}
      <li className={AddClicked("profili")}>
        <Link onClick={update} to="/profili">
          Profili im
        </Link>
      </li>
    </ul>
  );
};
