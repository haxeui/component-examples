package;

import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialog.DialogButton;

@:build(haxe.ui.macros.ComponentMacros.build("assets/dialog3.xml"))
class Dialog3 extends Dialog {
    public function new()  {
        super();
        title = "Dialog 3";
        buttons = DialogButton.APPLY | DialogButton.SAVE | DialogButton.CLOSE;
        width = 750;
        addClass("error");
    }
}