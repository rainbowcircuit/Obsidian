import { core } from '../audio/main.js'
import * as THREE from 'three'

import { Line2 } from 'three/addons/lines/Line2.js'
import { LineMaterial } from 'three/addons/lines/LineMaterial.js'
import { LineGeometry } from 'three/addons/lines/LineGeometry.js'


// renderer
const renderer = new THREE.WebGLRenderer({ antialias: true});
renderer.setSize(600, 300);
renderer.setPixelRatio(window.devicePixelRatio); // Better quality on high-DPI displays


// scene
export const scene = new THREE.Scene();
scene.background = new THREE.Color(0x1f1f1f); 

// camera
const aspect = 600 / 300;
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

scene.add(light);
scene.add(pointLight);









class WavetableDisplay {
  meshes = [];
  tableGeometries = [];
  pos = 0.1;
  tablesHaveData = false;


  setTables(tables) {
    this.tables = tables;
    this.tablesHaveData = true;
  }

  createSelectedGeometry()
  {
    
  }

  createGeometry() {
    if (this.tablesHaveData) {
      const extrudeSettings = {
        depth: 0.1,
        bevelEnabled: true,
        bevelSegments: 2,
        steps: 8,
        bevelSize: 0.1,
        bevelThickness: 0.2
      };

      for (let table = 0; table < 8; table++) {
        const points = [];

        for (let sample = 0; sample < 2048; sample++) {
          const sampleValue = this.tables[table * 2048 + sample];
          points.push(sample * 0.005 - 5, sampleValue, 0);
        }

        const geometry = new LineGeometry();
        geometry.setPositions(points);

        const material = new LineMaterial({
          color: 0xA67BB9,
          linewidth: 1, 
          resolution: new THREE.Vector2(900, 300) 
        });

        const line = new THREE.Line(geometry, material);


        line.position.y = table * -0.3; // Stack them vertically
        line.position.x = table * 0.2; // Stack them vertically


        this.meshes.push(line);
        scene.add(line);
      }
    }
  }

}



export const tableGraphics = new WavetableDisplay();

function animate() {
  renderer.render(scene, camera);
}

renderer.setAnimationLoop(animate); 
// document.body.appendChild(renderer.domElement).id = "tableDisplay";


