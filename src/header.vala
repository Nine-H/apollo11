using Gtk;

public class ApolloHeader : Gtk.HeaderBar {
    public ApolloHeader () {
    
        // FIXME: here you can start adding widgets to the
        // headerbar of your app, Gtk.HeaderBar inherits a
        // load of methods from Gtk.Box, so you can declare
        // widgets and add() or pack_[start|end]() them.
        
        // https://valadoc.org/gtk+-3.0/Gtk.HeaderBar.html
        
        this.title = "Apollo11";
        this.show_close_button = true;
        
        // FIXME: delete the code below this line to blank the headerbar
        
        
        
        var notification_test = new Gtk.Button.from_icon_name ("document-new", Gtk.IconSize.LARGE_TOOLBAR);
        
        notification_test.clicked.connect (() => {
            var notification = new Notification (_("Check header.vala"));
            notification.set_body (_("to see how to add buttons to header"));
            GLib.Application.get_default ().send_notification ("apollo11.app", notification);
        });
        
        this.pack_start (notification_test);
        
        // stop deleting :D
    }
}
