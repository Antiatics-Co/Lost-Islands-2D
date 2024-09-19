components {
  id: "Level1"
  component: "/main/Scripts/Level/Level1.script"
}
components {
  id: "Test"
  component: "/Assets/Images/TileMaps/Test.tilemap"
}
components {
  id: "Theme1"
  component: "/Assets/Theme1.sound"
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "collision_shape: \"/Assets/Images/TileMaps/Test.tilemap\"\ntype: COLLISION_OBJECT_TYPE_STATIC\nmass: 0.0\nfriction: 0.1\nrestitution: 0.5\ngroup: \"level\"\nmask: \"player\"\n"
}
