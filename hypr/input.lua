---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us, ru",
        kb_variant = "",
        kb_model   = "",
        kb_options = "grp:caps_toggle",
        kb_rules   = "",

    	repeat_rate = 30,   -- Зажержка для повторения. 
    	repeat_delay = 200, -- Задержка ввода.

        sensitivity = -0.1, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
            tap_to_click = true,
            disable_while_typing = true,
            tap_and_drag = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

hl.device({
    name        = "compx-2.4g-wireless-receiver",
    accel_profile = "flat",
    sensitivity = -0.5,
})

---------------
