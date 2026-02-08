import { core } from '../audio/main.js'
import * as THREE from 'three'
import * as Obsedian from './waveform'

// renderer
const renderer = new THREE.WebGLRenderer( {antialias: true });
renderer.setSize(1200, 800);
renderer.setPixelRatio(window.devicePixelRatio); // Better quality on high-DPI displays

// scene
const scene = new THREE.Scene();
scene.background = new THREE.Color(0x1f1f1f); 

// camera
const aspect = 1200 / 800;
const frustumSize = 5;
const camera = new THREE.OrthographicCamera(
  frustumSize * aspect / -2, 
  frustumSize * aspect / 2,
  frustumSize / 2,
  frustumSize / -2,
  0.1,
  1000
);
camera.position.z = 15;

// light
const light = new THREE.HemisphereLight();
light.intensity = 2;
const pointLight = new THREE.DirectionalLight();
pointLight.intensity = 30
const pointLight2 = new THREE.DirectionalLight();
pointLight2.intensity = 2
pointLight2.position.y = -5


scene.add(light);
scene.add(pointLight);
scene.add(pointLight2);

// add to scene
let shapeMesh = new Obsedian.ObsidianMesh();
shapeMesh.material.wireframe = false;
shapeMesh.addToScene(scene);

let orbitMesh = new Obsedian.OrbitMesh();
scene.add(orbitMesh.mesh)

let randX = Math.random() * 0.9;
let randY = Math.random() * 0.9;
let randZ = Math.random() * 0.9;

let scale = 0.3


core.on('snapshot', function(e) {
  console.log(e);
  if (e.source === "ampEG") // switch this to eg
   {
     egAmount = e.data;
   }
});


let egAmount = 0;
let time = 0;
let time2 = 0;

let outlineScale = 1;
function animate() {
  time = time + 0.02 % (Math.PI * 2);
  time2 = time2 + 0.025 % 1;


  shapeMesh.mesh.rotation.y = time;

  pointLight.position.x = Math.cos(time);
  pointLight.position.y = Math.sin(time);


  // animate vertices
  for (let i = 0; i < shapeMesh.sharedVertexIndexes.length; i++)
  {
    
    if (i % 2 == 0){
      shapeMesh.modifyVertex(i, Math.sin(i) * egAmount, 
        egAmount, 
        egAmount);
    }
  }





  renderer.render(scene, camera);
}

renderer.setAnimationLoop(animate);
document.body.appendChild(renderer.domElement).id = "visualizer";
