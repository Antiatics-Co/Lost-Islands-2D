components {
  id: "Level1"
  component: "/main/Scripts/Level/Level1.script"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
  property_decls {
  }
}
components {
  id: "Test"
  component: "/Assets/Images/TileMaps/Test.tilemap"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
  property_decls {
  }
}
components {
  id: "Theme1"
  component: "/Assets/Theme1.sound"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
  property_decls {
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "collision_shape: \"/Assets/Images/TileMaps/Test.tilemap\"\ntype: COLLISION_OBJECT_TYPE_STATIC\nmass: 0.0\nfriction: 0.1\nrestitution: 0.5\ngroup: \"level\"\nmask: \"player\"\nlinear_damping: 0.0\nangular_damping: 0.0\nlocked_rotation: false\nbullet: false\n"
  position {
    x: 0.0
    y: 0.0
    z: 0.0
  }
  rotation {
    x: 0.0
    y: 0.0
    z: 0.0
    w: 1.0
  }
}
