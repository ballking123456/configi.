---------------------
---- MY PROGRAMS ----
---------------------

terminal    = "alacritty"
fileManager = "kitty -e yazi"
menu        = "fuzzel"
cursor      = "hyprctl 'setcursor Bibata-Original-Ice' 20"
wayb        = "pkill waybar && waybar"
browser     = "zen-browser"

hl.on("hyprland.start", function () 
   hl.exec_cmd("waybar")
   hl.exec_cmd("hypridle")
   hl.exec_cmd("awww-daemon")
   hl.exec_cmd("copyq")
   hl.exec_cmd(cursor)
end)

----------------------
