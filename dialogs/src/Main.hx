package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.components.Image;
import haxe.ui.components.Label;
import haxe.ui.containers.dialogs.Dialog;
import haxe.ui.containers.dialogs.MessageBox;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            var main:Component = ComponentMacros.buildComponent("assets/main.xml");
            app.addComponent(main);

            var infoButton = main.findComponent("infoButton", Button);
            infoButton.onClick = function(e) {
                Toolkit.messageBox("This is a test info message\n\nLine1\nLine2\nLine3", function(button) {
                    trace("'" + button + "' clicked");
                });
            };

            var questionButton = main.findComponent("questionButton", Button);
            questionButton.onClick = function(e) {
                Toolkit.messageBox("This is a test question message\n\nLine1\nLine2\nLine3", MessageBoxType.QUESTION, function(button) {
                    trace("'" + button + "' clicked");
                });
            };
            
            var warningButton = main.findComponent("warningButton", Button);
            warningButton.onClick = function(e) {
                Toolkit.messageBox("This is a test warning message\n\nLine1\nLine2\nLine3", MessageBoxType.WARNING, function(button) {
                    trace("'" + button + "' clicked");
                });
            };
            
            var errorButton = main.findComponent("errorButton", Button);
            errorButton.onClick = function(e) {
                Toolkit.messageBox("This is a test error message\n\nLine1\nLine2\nLine3", MessageBoxType.ERROR, function(button) {
                    trace("'" + button + "' clicked");
                });
            };
            
            var customNonModalDialogButton = main.findComponent("customNonModalDialogButton", Button);
            customNonModalDialogButton.onClick = function(e) {
                var dialog = new CustomDialog();
                dialog.width = 500;
                dialog.show();
            }

            var customModalDialogButton = main.findComponent("customModalDialogButton", Button);
            customModalDialogButton.onClick = function(e) {
                var image = new Image();
                image.resource = "haxeui-core/styles/default/haxeui.png";
                Toolkit.dialog(image);
            }
            
            var customContentButton = main.findComponent("customContentButton", Button);
            customContentButton.onClick = function(e) {
                Toolkit.dialog(ComponentMacros.buildComponent("assets/custom-content.xml"), "Custom", DialogButton.CLOSE | DialogButton.APPLY, function(button) {
                    trace("'" + button + "' clicked");
                });
            }
            
            app.start();
        });
    }
}
