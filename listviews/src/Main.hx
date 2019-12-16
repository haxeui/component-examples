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

            var button = main.findComponent("bob2", ItemRenderer);
            if (button != null) {
                var b = button.cloneComponent();
                main.addComponent(b);
            }
            
            var lv = main.findComponent("lv2", ListView);
            lv.onComponentEvent = function(e) {
                trace(e.data);
            }
            
            app.start();
        });
    }
}
