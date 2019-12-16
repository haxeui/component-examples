package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom-dialog.xml"))
class CustomDialog extends Dialog {
    public function new() {
        super();
        title = "Custom Dialog";
        modal = false;
        buttons =  DialogButton.APPLY | DialogButton.CANCEL;
    }
}
