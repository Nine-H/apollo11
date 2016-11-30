class Window : Gtk.Window {
    private Settings settings;
    
    private int window_width = 0;
    private int window_height = 0;
    
    public Window () {
        settings = new Settings ("com.github.nine-h.apollo11");
        window_width = settings.get_int ("window-width");
        window_height = settings.get_int ("window-height");
        this.set_default_size ( window_width, window_height );
        
        //var position = settings.get_strv ("position");
        this.set_position ( Gtk.WindowPosition.CENTER );
        
        var header = new ApolloHeader ();
        this.set_titlebar ( header );

        this.set_border_width ( 12 );
        this.destroy.connect ( Gtk.main_quit );
        this.delete_event.connect (() => {
            on_quit ();
            return false;
        }); //FIXME: why does this have to be a fucking lamda?
        
        this.add ( new HelloHouston(Gtk.Orientation.VERTICAL, 0) );
        
        show_all ();
        Gtk.main ();
    }
    
    private void on_quit () {
        this.get_size (out window_width, out window_height);
        settings.set_int ("window-width", window_width);
        settings.set_int ("window-height", window_height);
        stdout.printf ( "thank you for playing wing commander :D\n" );
    }
}
