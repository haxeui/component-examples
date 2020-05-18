package;

import haxe.ui.HaxeUIApp;
import haxe.ui.Toolkit;
import haxe.ui.components.Label;
import haxe.ui.containers.HBox;
import haxe.ui.core.ItemRenderer;

class Main {
    public static function main() {
        Toolkit.theme = "kenney";
        var app = new HaxeUIApp();
        app.ready(function() {
            var main = new MainView();
            app.addComponent(main);
            app.start();
            
            /*
            var r = new ItemRenderer();
            r.styleString = "padding:5px;background-color:red;width:100%;";
            var hbox = new HBox();
            hbox.styleString = "padding:5px;background-color:blue;width:100%";
            var label = new Label();
            label.id = "test";
            label.text = "bob";
            label.styleString = "background-color: yellow;width:100%";
            hbox.addComponent(label);
            r.addComponent(hbox);
            main.main.addComponent(r);
            r.data = {
                test: "bob2"
            }
            
            var r2 = r.cloneComponent();
            r2.data = {
                test: "bob3"
            }
            main.main.addComponent(r2);
            
            var r2 = r.cloneComponent();
            r2.data = {
                test: "bob4"
            }
            main.main.addComponent(r2);
            
            var r2 = r.cloneComponent();
            r2.data = {
                test: "bob5"
            }
            main.main.addComponent(r2);
            
            var r2 = r2.cloneComponent();
            r2.data = {
                test: "bob6"
            }
            main.main.addComponent(r2);
            */
        });
    }
}
