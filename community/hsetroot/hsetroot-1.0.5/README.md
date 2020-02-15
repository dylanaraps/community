hsetroot - imlib2-based wallpaper changer

original author: `Hyriand <hyriand@thegraveyard.org>` (2003)  
licence: GPL2  
needs libimlib2-dev, libx11-dev, libxinerama-dev, pkg-config, make

This repo contains hsetroot 1.0.2 with the following changes:

   * autotools was replaced by a simple Makefile which requires pkg-config, x11 paths added
   * includes patches from debian, written by Martin Suchanek, more details in git log
     * Fix a segmentation fault when no display is present.
     * Add the '-extend' option
     * Add the '-cover' option
   * reintroduced the screen mask `-screens` option from earlier versions .. which is rather useless actually, as it deals with X screens, not xrandr outputs
   * **added output support for all modes**, using xinerama
     * use `-root` to treat multiple displays as one big display (original hsetroot behavior)
   * added support for color names and more color formats (using XParseColor except for #rrggbbaa)
