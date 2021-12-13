import React from "react";
import ReactDOM from "react-dom";
import "./index.css";
import App from "./App";
import registerServiceWorker from "./registerServiceWorker";
import { DrizzleProvider } from "drizzle-react";

// Import contract
import SingularityToken from "./contracts/Token.json";

console.log(TutorialToken);

const options = {
    web3: {
        block: false,
        fallback: {
            type: "ws",
            url: "ws://127.0.0.1:7545"
        }
    },
    contracts: [SingularityToken],
    events: {}
};

ReactDOM.render( <
    DrizzleProvider options = { options } >
    <
    App / >
    <
    /DrizzleProvider>,
    document.getElementById("root")
);
registerServiceWorker();