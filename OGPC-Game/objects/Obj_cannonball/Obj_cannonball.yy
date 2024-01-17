{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Obj_cannonball",
  "spriteId": {
    "name": "Spr_cannonball",
    "path": "sprites/Spr_cannonball/Spr_cannonball.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": {
    "name": "Obj_bullet_par",
    "path": "objects/Obj_bullet_par/Obj_bullet_par.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Obj_solid","path":"objects/Obj_solid/Obj_solid.yy",},},
  ],
  "properties": [],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":null,"objectId":{"name":"Obj_bullet","path":"objects/Obj_bullet/Obj_bullet.yy",},"value":"30",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"damage","path":"objects/Obj_bullet_par/Obj_bullet_par.yy",},"objectId":{"name":"Obj_bullet_par","path":"objects/Obj_bullet_par/Obj_bullet_par.yy",},"value":"30",},
  ],
  "parent": {
    "name": "bullets",
    "path": "folders/Objects/Player/weapons/Guns/bullets.yy",
  },
}