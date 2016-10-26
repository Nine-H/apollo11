using Gtk;

class Window : Gtk.WIndow {
    public Window () {
        this.set_position ( Gtk.WindowPosition.CENTER );
        this.set_default_size ( 350, 500 );
        this,destroy.connect ( Gtk.main_quit );
        
        this.add ( new HelloHouston(Gtk.Orientation.VERTICAL, 0) );
        
        show_all ();
        Gtk.main ();
    }
}
