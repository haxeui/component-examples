package;

import haxe.ui.containers.dialogs.Dialog;

@:build(haxe.ui.macros.ComponentMacros.build("assets/custom-dialog.xml"))
class DialogWithCustomFooter extends Dialog {
    public function new() {
        super();
        addClass("custom-dialog-footer");
        title = "Custom Dialog";
        modal = false;
        buttons =  "Custom Action" | DialogButton.APPLY | DialogButton.CANCEL;
    }
}
