package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.components.Button;
import haxe.ui.containers.HBox;
import haxe.ui.containers.ListView;
import haxe.ui.core.Component;
import haxe.ui.core.ItemRenderer;
import haxe.ui.events.ItemEvent;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            var main:Component = ComponentMacros.buildComponent("assets/main.xml");
            app.addComponent(main);

            app.start();
        });
    }
}
