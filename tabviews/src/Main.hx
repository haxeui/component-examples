package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.components.Button;
import haxe.ui.components.TabBar2;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            var main:Component = ComponentMacros.buildComponent("assets/main.xml");
            app.addComponent(main);

            var tabs = new TabBar2();
            tabs.percentWidth = 100;
            tabs.tabPosition = "bottom";
            
            var b = new Button();
            b.text = "Page 1";
            tabs.addComponent(b);
            
            var b = new Button();
            b.text = "Page 2";
            tabs.addComponent(b);
            
            main.addComponent(tabs);
            
            app.start();
        });
    }
}
