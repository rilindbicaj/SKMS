import "../../Css/LogIn.css";
import Logo from "../../Media/logo.png";

export const LogIn = () => {
  return (
    <section
      className="flex flex-column justify-center align-center"
      id="LogIn"
    >
      <form onSubmit={(e) => e.preventDefault()}>
        <p>Kyçuni në platformë</p>
        <img src={Logo} alt="" />
        <p className="formFields flex flex-row justify-between">
          <span>NUMRI IDENTIFIKUES</span>
          <input type="text" name="NrIdentifikuesField" id="" />
        </p>
        <p className="formFields flex flex-row justify-between">
          <span>KODI I QASJES</span>
          <input type="text" name="NrIdentifikuesField" id="" />
        </p>
        <button>KYÇU</button>
        <p className="info">
          Keni pyetje?<span className="bluetext"> Na kontaktoni këtu. </span>
        </p>
      </form>
    </section>
  );
};