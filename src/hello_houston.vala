using Gtk;

public class HelloHouston : Gtk.Box {
    public HelloHouston ( Gtk.Orientation orientation, int spacing ) {
        Object ( orientation: orientation, spacing: spacing );
        
        this.set_spacing ( 6 );
        
        var heading = new Gtk.Label ( "Hello, Houston" );
        heading.get_style_context().add_class( "h1" );
        this.add ( heading );
        
        var copy = new Gtk.Label ( "Apollo11 is an app skeleton designed for beginner to intermediate developers interested in creating software for elementary OS. The aim is to create a project with no program logic mixed in with the code to form a stable base for new projects and as a learning resource.\n\nYou can dowload the latest version from https://github.com/Nine-H/apollo11" );
        copy.set_line_wrap ( true );
        this.add ( copy );
    }
}
