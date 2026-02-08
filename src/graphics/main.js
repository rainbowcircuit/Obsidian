import { core } from '../audio/main.js'
import * as THREE from 'three'
import * as Obsedian from './waveform'
import { outline } from 'three/examples/jsm/tsl/display/OutlineNode.js';

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



core.on('snapshot', function(e) {
  if (e.source === "ampEG") { egAmount = e.data; } 
});


let egAmount = 0;
let time = 0;
let time2 = 0;

function animate() {

  // clean this up next:
  time = time + 0.02 % (Math.PI * 2) * (egAmount * 6 + 1);
  time2 = time2 + 0.2 % 1;
  pointLight.intensity = 5 + (egAmount * 20);
  pointLight2.intensity = (egAmount * 5);
  shapeMesh.mesh.rotation.y = time;
  shapeMesh.spikeMod(egAmount, time2);



  // orb
  orbitMesh.mesh.position.x = Math.cos(time) * 2;
  orbitMesh.mesh.position.z = Math.sin(time) * 2;


  renderer.render(scene, camera);
}

renderer.setAnimationLoop(animate);
document.body.appendChild(renderer.domElement).id = "visualizer";
