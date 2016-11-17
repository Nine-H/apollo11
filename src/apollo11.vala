using Gtk;

class Apollo11App : Granite.Application {
    public Apollo11App () {
        new Window ();
    }
    
    public static int main ( string [] args ) {
        Gtk.init ( ref args );
        var app = new Apollo11App ();
        return app.run (args);
    }
}
