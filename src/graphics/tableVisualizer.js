import { core } from '../audio/main.js'
import * as THREE from 'three'

import { Line2 } from 'three/addons/lines/Line2.js'
import { LineMaterial } from 'three/addons/lines/LineMaterial.js'
import { LineGeometry } from 'three/addons/lines/LineGeometry.js'


// renderer
const renderer = new THREE.WebGLRenderer({ antialias: true});
renderer.setSize(600, 400);
renderer.setPixelRatio(window.devicePixelRatio); // Better quality on high-DPI displays


// scene
export const scene = new THREE.Scene();
scene.background = new THREE.Color(0x333333); 

// camera
const aspect = 600 / 600;
const frustumSize = 5;
const camera = new THREE.PerspectiveCamera(45, 600 / 600, 1, 1000);

camera.position.z = 3;

// light
const light = new THREE.HemisphereLight();
light.intensity = 2;
const pointLight = new THREE.DirectionalLight();
pointLight.intensity = 30

scene.add(light);
scene.add(pointLight);









class WavetableDisplay {
  tablesXHaveData = false;
  tablesYHaveData = false;
  tablesXData;
  tablesYData;

  normPosX = 0;
  normPosY = 0;

  selectionGeometry = 0;
  selectionMaterial;
  selectionLine = 0;

  tableLines = [];


  initializeTableWaveform() {
    /*
    this.selectionMaterial = new LineMaterial({
      color: 0xA67BB9,
      linewidth: 1,
      resolution: new THREE.Vector2(900, 300)
    });

    for (let table = 0; table < 8; table++) {
      const positions = this.getSelectedGeometry(0.125 * table, 0.125 * table);
      if (!positions || positions.length === 0) {
        return;
      }

      // Create a NEW geometry for each table line
      const tableGeometry = new LineGeometry();
      tableGeometry.setPositions(positions);

      const tableLine = new Line2(tableGeometry, this.selectionMaterial);
      this.tableLines.push(tableLine);
      scene.add(tableLine);
    }
      */
  }


  initializeSelectedWaveform()
  {
    this.selectionMaterial = new LineMaterial({
      color: 0xFFFFFF,
      linewidth: 1,
      resolution: new THREE.Vector2(900, 300)
    });

    this.selectionGeometry = new LineGeometry();

    const positions = this.getSelectedGeometry(0, 0);
    if (!positions || positions.length === 0) {
      return; 
    }

    this.selectionGeometry.setPositions(positions);
    this.selectionLine = new Line2(this.selectionGeometry, this.selectionMaterial);

    scene.add(this.selectionLine);
  }


  setTables(tables, isXTable) {
    if (isXTable) {
      this.tablesXData = tables;
      this.tablesXHaveData = true;

    } else {
      this.tablesYData = tables;
      this.tablesYHaveData = true;
    }
  }

  update()
  {
    for(let table = 0; table < 8; table++)
    {
      const tablePositions = this.getSelectedGeometry(0.125 * table, 0.125 * table)
      if (!tablePositions || tablePositions.length === 0) { break; }
      this.tableLines[table].geometry.setPositions(tablePositions);
      this.tableLines[table].geometry.attributes.position.needsUpdate = true;
    }



    const selectionPositions = this.getSelectedGeometry(this.normPosX, this.normPosY);
    if (!selectionPositions || selectionPositions.length === 0) { return; }
    this.selectionGeometry.setPositions(selectionPositions);
    this.selectionGeometry.attributes.position.needsUpdate = true;
  }
  
  getSelectedGeometry(posX, posY) {
    if (!this.tablesXHaveData || !this.tablesYHaveData) { return; }

    let tableIndexX0 = Math.floor(posX * 8.0);
    let tableIndexX1 = posX * 8.0;
    let lerpX = tableIndexX1 - tableIndexX0;

    let tableIndexY0 = Math.floor(posY * 8.0);
    let tableIndexY1 = posY * 8.0;
    let lerpY = tableIndexY1 - tableIndexY0;

    const points = [];
    const samplesPerCycle = 2048; 
      for (let sample = 0; sample < samplesPerCycle; sample++) {
        // x
        const sampleValueX0 = this.tablesXData[sample + 2048 * tableIndexX0];
        const sampleValueX1 = this.tablesXData[sample + 2048 * tableIndexX0 + 1];
        const sampleValueX = (sampleValueX0 * lerpX) + (sampleValueX1 * (1 - lerpX))

        // y 
        const sampleValueY0 = this.tablesYData[sample + 2048 * 5];
        const sampleValueY1 = this.tablesYData[sample + 2048 * 6];
        const sampleValueY = (sampleValueY0 * lerpX) + (sampleValueY1 * (1 - lerpX))

        // biliniear interpolation
        let sampleValue = (sampleValueY * lerpY) + (sampleValueX * (1 - lerpY));
        sampleValue *= 0.25

        let yPosOffset = -1 + (posY * 2);
        points.push(-1 + sample * (2 / 2048), sampleValue + yPosOffset, 0);
    }

    return points;
  }
}




export const tableGraphics = new WavetableDisplay();

let time = 0;
let time2 = 0;

function animate() {
  time = (time + 0.008) % 1;
  time2 = (time2 + 0.02) % 1;

  tableGraphics.normPosX = time;
  tableGraphics.normPosY = time2;


  tableGraphics.update()
  renderer.render(scene, camera);
}

// renderer.setAnimationLoop(animate); 
// document.body.appendChild(renderer.domElement).id = "tableDisplay";


