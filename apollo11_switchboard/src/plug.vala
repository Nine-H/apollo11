public class Apollo11.Plug : Switchboard.Plug {
    public Plug () {
        Object (category: Category.SYSTEM,
                code_name: "system-apollo11-plug",
                display_name: _("Apollo11"),
                description: _("Minimal example plug for elementary third party developers"),
                icon: "apollo11");
    }
}

public Switchboard.Plug get_plug (Module module) {
    debug ("Activation Apollo11 plug");
    var plug = new Apollo11.Plug ();
    return plug;
}
