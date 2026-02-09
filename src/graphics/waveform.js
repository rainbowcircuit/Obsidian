import { core } from '../audio/main.js'
import * as THREE from 'three'

export class ObsidianMesh {

    mesh
    geometry
    sharedVertexIndexes
    vector
    geometryPos = []
    originalGeomPos = []
    material
    random;

    constructor() {
        this.sharedVertexIndexes = [];
        this.geometry = new THREE.DodecahedronGeometry(1, 1);  
        
        let position = this.geometry.attributes.position;
        let processed = new Set();

        for (let i = 0; i < position.count; i++){
            if (processed.has(i)) continue;
            let vector1 = [position.getX(i), position.getY(i), position.getZ(i)]
            let group = [i];
            processed.add(i)

            for (let j = i + 1; j < position.count; j++){
                if (processed.has(j)) continue;
                let vector2 = [position.getX(j), position.getY(j), position.getZ(j)]

                if (this.isPointShared(vector1, vector2)){
                    group.push(j);
                    processed.add(j);
                }
            }
            this.sharedVertexIndexes.push(group);
        }

        this.originalPositions = [];
        for (let group of this.sharedVertexIndexes) {
            let idx = group[0];
            this.originalPositions.push([
                position.getX(idx) * this.getScaledRandom(),
                position.getY(idx) * this.getScaledRandom(),
                position.getZ(idx) * this.getScaledRandom()
            ]);
        }

        this.material = new THREE.MeshStandardMaterial( {
            color: 0xA67BB9,
            metalness: 0.95,
            roughness: 0.25,
            envMapIntensity: 1.0
        } );

        this.material.wireframe = true;
        this.mesh = new THREE.Mesh(this.geometry, this.material);
    }

    getScaledRandom()
    {
        return Math.random() * 0.5 + 0.5
    }

    isPointShared(vector1, vector2)
    {
        let epsilon = 0.0001;
        return (
            Math.abs(vector1[0] - vector2[0]) < epsilon &&
            Math.abs(vector1[1] - vector2[1]) < epsilon &&
            Math.abs(vector1[2] - vector2[2]) < epsilon);
    }

    modifyVertex(index, x, y, z) {
        let pos = this.geometry.attributes.position;
        let verticesIndex = this.sharedVertexIndexes[index];
        let original = this.originalPositions[index];

        for (let index of verticesIndex) {
            pos.setX(index, original[0] + x); 
            pos.setY(index, original[1] + y);
            pos.setZ(index, original[2] + z);
        }
        pos.needsUpdate = true;
        this.geometry.computeVertexNormals();
    }


    spikeMod(outwardAmt, osc)
    {
        // clean this up also:
        outwardAmt *= 0.35
        osc = osc % 1;
        osc = Math.abs(Math.sin(osc * Math.PI * 2)) * 0.35;
        osc *= osc;
        outwardAmt = outwardAmt + (osc * outwardAmt)

        for(let index in this.sharedVertexIndexes)
        {
            let original = this.originalPositions[index];
            let normLength = Math.sqrt(original[0] ** 2 + original[1] ** 2 + original[2] ** 2);
            
            let xOffset = 0, yOffset = 0, zOffset = 0;
            if (index % 8 === 0){
                xOffset = (original[0] / normLength) * outwardAmt;
                yOffset = (original[1] / normLength) * outwardAmt;
                zOffset = (original[2] / normLength) * outwardAmt;

            } 
                
            this.modifyVertex(index, xOffset, yOffset, zOffset)
        }
    }


    addToScene(scene){
        scene.add(this.mesh)
    }
}



export class OrbitMesh
{
    geometry;
    material;
    mesh;

    constructor(){
        this.geometry = new THREE.CapsuleGeometry(0.08, 0, 5, 20, 1);
        this.material = new THREE.MeshStandardMaterial( {
            color: 0xffffff,
            metalness: 0.95,
            roughness: 0.25,
            envMapIntensity: 1.0
        });
        this.mesh = new THREE.Mesh(this.geometry, this.material);
    }

    addToScene(scene)
    {
        scene.add(this.mesh)
    }
}