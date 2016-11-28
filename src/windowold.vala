using Gtk;

class Window : Gtk.Window {
    private GLib.Settings settings;
    
    public Window () {
        settings = new GLib.Settings ("com.github.nine-h.apollo11");
        
        //FIXME debug
        stdout.printf ( "window-height: %i\n", settings.get_int ("window-height") );
        stdout.printf ( "window-width: %i\n", settings.get_int ("window-width") );
        stdout.printf ( "window-x: %i\n", settings.get_int ("window-x") );
        stdout.printf ( "window-y: %i\n", settings.get_int ("window-y") );
        //!debug
        
        this.move ( settings.get_int ("window-x"),
                    settings.get_int ("window-y") );
        
        if ( settings.get_boolean ("first-run") ) {
            this.set_position ( Gtk.WindowPosition.CENTER );
            settings.set_boolean ( "first-run", false );
        }
        
        this.resize ( settings.get_int ("window-width"),
                      settings.get_int ("window-height") );
        this.set_border_width ( 12 );
        this.destroy.connect ( quit );
        
        var header = new ApolloHeader ();
        this.set_titlebar ( header );
        
        this.add ( new HelloHouston(Gtk.Orientation.VERTICAL, 0) );
        
        show_all ();
        Gtk.main ();
    }
    
    private void quit () {
        this.get_position ( out int x, out int y );
        settings.set_int ( "window-x", x );
        settings.set_int ( "window-y", y );
        this.get_size( out int w, out int h );
        settings.set_int ( "window-width", w );
        settings.set_int ( "window-height", h );
        
        //FIXME debug
        stdout.printf ( "saved window-height: %i\n", settings.get_int ("window-height") );
        stdout.printf ( "saved window-width: %i\n", settings.get_int ("window-width") );
        stdout.printf ( "saved window-x: %i\n", settings.get_int ("window-x") );
        stdout.printf ( "saved window-y: %i\n", settings.get_int ("window-y") );
        //!debug
        
        stdout.printf ( "thank you for playing wing commander :D\n" );
        Gtk.main_quit ();
    }
}
