package;

import haxe.ui.Toolkit;
import haxe.ui.containers.Box;
import haxe.ui.containers.dialogs.MessageBox.MessageBoxType;
import haxe.ui.containers.menus.Menu.MenuEvent;
import haxe.ui.core.Screen;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.macros.ComponentMacros.build("assets/main.xml"))
class MainView extends Box {
    public function new() {
        super();
        percentWidth = 100;
        percentHeight = 100;
    }
    
    @:bind(infoButton, MouseEvent.CLICK)
    private function onInfoButton(e:MouseEvent) {
        Screen.instance.messageBox("This is the info message\n\nLine 1\nLine 2\nLine 3", "Info message");
    }
    
    @:bind(questionButton, MouseEvent.CLICK)
    private function onQuestionButton(e:MouseEvent) {
        Screen.instance.messageBox("This is the question message\n\nLine 1\nLine 2\nLine 3", "Question message", MessageBoxType.TYPE_QUESTION);
    }
    
    @:bind(warningButton, MouseEvent.CLICK)
    private function onWarningButton(e:MouseEvent) {
        Screen.instance.messageBox("This is the warning message\n\nLine 1\nLine 2\nLine 3", "Warning message", MessageBoxType.TYPE_WARNING);
    }
    
    @:bind(errorButton, MouseEvent.CLICK)
    private function onErrorButton(e:MouseEvent) {
        Screen.instance.messageBox("This is the error message\n\nLine 1\nLine 2\nLine 3", "Error message", MessageBoxType.TYPE_ERROR);
    }
    
    @:bind(dialog1Button, MouseEvent.CLICK)
    private function onDialog1Button(e:MouseEvent) {
        new Dialog1().show();
    }
    
    @:bind(dialog2Button, MouseEvent.CLICK)
    private function onDialog2Button(e:MouseEvent) {
        new Dialog2().show();
    }
    
    @:bind(dialog3Button, MouseEvent.CLICK)
    private function onDialog3Button(e:MouseEvent) {
        new Dialog3().show();
    }
    
    @:bind(mainMenu, MenuEvent.MENU_SELECTED)
    private function onMainMenu(e:MenuEvent) {
        switch (e.menuItem.id) {
            case "kenney-theme":
                if (Toolkit.theme != "kenney") {
                    Screen.instance.removeComponent(this);
                    Toolkit.theme = "kenney";
                    Screen.instance.addComponent(new MainView());
                }
            case "default-theme":
                if (Toolkit.theme != "default") {
                    Screen.instance.removeComponent(this);
                    Toolkit.theme = "default";
                    Screen.instance.addComponent(new MainView());
                }
        }
    }
}