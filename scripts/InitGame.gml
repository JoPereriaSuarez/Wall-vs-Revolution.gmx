global.gameWidth = 1050;
global.gameHeight = 1450;
global.zoom = 1;

window_set_size(global.gameWidth * global.zoom, global.gameWidth * global.zoom);
surface_resize(application_surface, global.gameWidth, global.gameHeight);
display_reset(0,false);
