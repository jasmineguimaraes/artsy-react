import './App.css';
import Navbar from './navbar'
import {Main} from './main';
import Lojas from './lojas';
import Produtos from './produtos';
import Contato from './contato';
import Footer from "./footer.js";

import { Route } from 'react-router-dom';


function App() {
  return (
    <div className="App">
      <Navbar />
      <Route exact path="/" component={Main} />
      <Route exact path='/produtos' component={Produtos} />
      <Route exact path="/lojas" component={Lojas} />
      <Route exact path="/contato" component={Contato} />
      <Footer />
    </div>
  );
}

export default App;
