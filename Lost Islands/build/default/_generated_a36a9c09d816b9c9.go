components {
  id: "map"
  component: "/main/Scripts/Map/map.script"
}
components {
  id: "MainMap"
  component: "/Assets/Images/TileMaps/MainMap.tilemap"
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "collision_shape: \"/Assets/Images/TileMaps/MainMap.tilemap\"\ntype: COLLISION_OBJECT_TYPE_STATIC\nmass: 0.0\nfriction: 0.1\nrestitution: 0.5\ngroup: \"\"\nmask: \"playerMap\"\n"
}
