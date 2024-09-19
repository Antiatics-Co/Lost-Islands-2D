components {
  id: "MainMenu"
  component: "/main/GUI files/MainMenu.gui"
}
components {
  id: "Settings"
  component: "/main/GUI files/Settings.gui"
}
components {
  id: "MainMenuTheme"
  component: "/Assets/main/MainMenuTheme.sound"
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
  id: "Theme1"
  component: "/Assets/Theme1.sound"
}
components {
  id: "music"
  component: "/main/Scripts/music.script"
}
embedded_components {
  id: "Level"
  type: "collectionproxy"
  data: "collection: \"/main/Level.collection\"\n"
}
embedded_components {
  id: "MainMap"
  type: "collectionproxy"
  data: "collection: \"/main/MainMap.collection\"\n"
}
