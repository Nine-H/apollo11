using Gtk;

public class HelloHouston : Gtk.Box {
    public HelloHouston ( Gtk.Orientation orientation, int spacing ) {
        Object ( orientation: orientation, spacing: spacing );
        this.add ( new Gtk.Label ("Hello, Houston") );
        this.add ( new Gtk.Label ("Apollo11 is an app skeleton designed for beginner to intermediate developers interested in creating software for elementary OS") );
        this.add ( new Gtk.Label ("You can dowload the latest version from https://github.com/Nine-H/apollo11") );
    }
}
