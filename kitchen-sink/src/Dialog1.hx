package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/dialog1.xml"))
class Dialog1 extends Dialog {
    public function new()  {
        super();
        title = "Dialog 1";
        buttons = "Custom Button" | DialogButton.SAVE;
        width = 500;
    }
}