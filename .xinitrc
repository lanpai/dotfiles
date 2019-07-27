xsetroot -cursor_name left_ptr
pulseaudio --daemonize
transmission-daemon -t -u arch -v linux -p 9091 -a "127.0.0.1"
GTK_THEME=Mojave-dark 
exec bspwm
