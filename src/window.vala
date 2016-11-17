using Gtk;

class Window : Gtk.Window {
    public Window () {
        this.set_position ( Gtk.WindowPosition.CENTER );
        this.set_default_size ( 350, 500 );
        this.set_border_width ( 12 );
        this.destroy.connect ( Gtk.main_quit );
        
        var header = new ApolloHeader ();
        this.set_titlebar ( header );
        
        this.add ( new HelloHouston(Gtk.Orientation.VERTICAL, 0) );
        
        show_all ();
        Gtk.main ();
    }
}
