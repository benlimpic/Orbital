import '../App.css';
import { Routes, Route } from 'react-router-dom';
import Projects from './Projects/Projects';
import Project from './Project/Project';

function App() {
  return (
    <Routes>
      <Route exact path="/" element={Projects} />
      <Route exact path="/projects/:slug" element={Project} />
    </Routes>
  );
}

export default App;


