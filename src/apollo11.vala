using Gtk;

class Apollo11App : Granite.Application {
    private Window window;
    construct {
        //a full list of fields can be found at
        //https://valadoc.org/granite/Granite.Application.html
        program_name = "Apollo11";
        exec_name = "apollo11";
        app_years = "2016";
        app_launcher =  "apollo11.desktop";
        main_url = "https://github.com/Nine-H/apollo11";
        bug_url = "https://github.com/Nine-H/apollo11/issues";
        translate_url = "https://github.com/Nine-H/apollo11";
        about_authors = { "Nine H <nine.gentooman@gmail.com>" };
        about_license_type = Gtk.License.GPL_3_0;
    }
    
    public override void activate () {
        if ( window == null ) {
            window = new Window ();
        } else {
            window.present ();
        }
    }
    
    public Apollo11App () {
        // Humm.
    }
    
    public static int main ( string [] args ) {
        Gtk.init ( ref args );
        var app = new Apollo11App ();
        return app.run (args);
    }
}
