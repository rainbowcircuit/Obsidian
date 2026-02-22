import * as THREE from 'three'
import { Line2 } from 'three/addons/lines/Line2.js'
import { LineMaterial } from 'three/addons/lines/LineMaterial.js'
import { LineGeometry } from 'three/addons/lines/LineGeometry.js'

// renderer
const renderer = new THREE.WebGLRenderer({ antialias: true });
renderer.setSize(600, 400);
renderer.setPixelRatio(window.devicePixelRatio);

// scene
const scene = new THREE.Scene();
scene.background = new THREE.Color(0x333333);

// camera
const camera = new THREE.PerspectiveCamera(45, 600 / 400, 1, 1000);
camera.position.z = 2.5;

class BufferDisplay {
    constructor() {
        this.material = new LineMaterial({
            color: 0xA67BB9,
            linewidth: 4,
            resolution: new THREE.Vector2(600, 400)
        });
        this.geometry = new LineGeometry();
        this.line = new Line2(this.geometry, this.material);
        scene.add(this.line);
    }

    setBuffer(buffer) {
        const len = buffer.length;
        const positions = [];
        for (let i = 0; i < len; i++) {
            const x = -1 + i * (2 / len);
            const y = buffer[i];
            positions.push(x, y, 0);
        }
        this.geometry.setPositions(positions);
        this.render();
    }

    render() {
        renderer.render(scene, camera);
    }
}
export const bufferDisplay = new BufferDisplay();

document.body.appendChild(renderer.domElement).id = "modulation";