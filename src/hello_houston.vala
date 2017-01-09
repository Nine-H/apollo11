using Gtk;

public class HelloHouston : Gtk.Box {
    public HelloHouston () {
        Object ( orientation: Gtk.Orientation.VERTICAL, spacing: 0 );
        
        this.set_spacing ( 6 );
        
        // FIXME: To get started right away delete the code below this line and begin
        // declaring and adding widgets. For a brief introduction please see
        // https://elementary.io/docs/code/getting-started#gtk-window-and-gtk-button
        
        var heading = new Gtk.Label ( _("Hello, Houston") );
        heading.get_style_context().add_class( "h1" );
        this.add ( heading );
        
        //fixme, trying this out, may not work with localization.
        var copy = new Gtk.Label ( _(
            "Apollo11 is an app skeleton designed for beginner to intermediate " +
            "developers interested in creating software for elementary OS. " +
            "The aim is to create a project with no program logic mixed in with " +
            "the code to form a stable base for new projects and as a learning resource.\n"+
            "\nYou can dowload the latest version from https://github.com/Nine-H/apollo11"
        ) );
        copy.set_line_wrap ( true );
        this.add ( copy );
        
        // FIXME: stop deleting lines here :D
    }
}
