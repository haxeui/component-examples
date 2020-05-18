package;

import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.Dialog.DialogButton;

@:build(haxe.ui.macros.ComponentMacros.build("assets/dialog2.xml"))
class Dialog2 extends Dialog {
    public function new()  {
        super();
        title = "Dialog 2";
        buttons = DialogButton.APPLY | DialogButton.SAVE | DialogButton.CLOSE;
        width = 750;
        addClass("question");
    }
}