using Gtk;

public class HelloHouston : Gtk.Box {
    public HelloHouston ( Gtk.Orientation orientation, int spacing ) {
        Object ( orientation: orientation, spacing: spacing );
        this.add ( new Gtk.Label ("Hello, Houston") );
    }
}
