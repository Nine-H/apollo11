class Window : Gtk.Window {
    private Settings settings;
    
    private int window_width = 0;
    private int window_height = 0;
    private int window_x = 0;
    private int window_y = 0;
    
    public Window () {
        settings = new Settings ( "com.github.nine-h.apollo11" );
        window_width = settings.get_int ( "window-width" );
        window_height = settings.get_int ( "window-height" );
        this.set_default_size ( window_width, window_height );
        
        window_x = settings.get_int ( "window-x" );
        window_y = settings.get_int ( "window-y" );
        if ( settings.get_boolean ( "first-run" ) ) {
            this.set_position ( Gtk.WindowPosition.CENTER );
            settings.set_boolean ( "first-run", false );
        } else {
            this.move ( window_x, window_y );
        }
        
        var header = new ApolloHeader ();
        this.set_titlebar ( header );

        this.set_border_width ( 12 );
        this.destroy.connect ( Gtk.main_quit );
        this.delete_event.connect ( on_quit );
        
        this.add ( new HelloHouston() );
        
        show_all ();
        Gtk.main ();
    }
    
    private bool on_quit () {
        this.get_size (out window_width, out window_height);
        settings.set_int ("window-width", window_width);
        settings.set_int ("window-height", window_height);
        this.get_position (out window_x, out window_y);
        settings.set_int ("window-x", window_x);
        settings.set_int ("window-y", window_y);
        stdout.printf ( "thank you for playing wing commander :D\n" );
        return false;
    }
}
