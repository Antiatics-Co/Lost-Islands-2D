components {
  id: "Player"
  component: "/main/Scripts/Player.script"
}
components {
  id: "dust"
  component: "/Assets/dust.particlefx"
  position {
    x: -7.666667
    y: -16.333332
  }
  rotation {
    x: -3.460301E-4
    y: 0.010996999
    z: 0.031448398
    w: 0.99944484
  }
}
components {
  id: "Jumping"
  component: "/Assets/Jumping.sound"
}
components {
  id: "land"
  component: "/Assets/land.sound"
}
components {
  id: "playercollision"
  component: "/main/Objects/Player/playercollision.collisionobject"
}
embedded_components {
  id: "factory"
  type: "factory"
  data: "prototype: \"/main/Objects/Elements/FireBullet.go\"\n"
  ""
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"idle\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/Assets/Game.atlas\"\n"
  "}\n"
  ""
}
