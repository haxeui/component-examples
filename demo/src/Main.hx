package ;

import haxe.ui.HaxeUIApp;
import haxe.ui.components.Button;
import haxe.ui.components.Label;
import haxe.ui.containers.ListView;
import haxe.ui.containers.TableView;
import haxe.ui.core.Component;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
            var main:Component = ComponentMacros.buildComponent("assets/main.xml");
            app.addComponent(main);

            // its better to do this in code, as using hscript is slooooow
            main.findComponent("addVirtualListItems", Button).onClick = function(e) {
                var virtualList = main.findComponent("virtualList", ListView);
                virtualList.dataSource.allowCallbacks = false;
                for (i in 0...10000) {
                    virtualList.dataSource.add({
                        itemImage: "haxeui-core/styles/default/haxeui_small.png",
                        itemText: "Item " + (virtualList.dataSource.size + 1),
                        itemSubText: "Sub Text " + (virtualList.dataSource.size + 1)
                    });
                }
                virtualList.dataSource.allowCallbacks = true;
                main.findComponent("virtualListCount", Label).text = "" + virtualList.dataSource.size + " Items";
            }
            
            // its better to do this in code, as using hscript is slooooow
            main.findComponent("addVirtualTableItems1", Button).onClick = function(e) {
                var virtualTable1 = main.findComponent("virtualTable1", TableView);
                virtualTable1.dataSource.allowCallbacks = false;
                for (i in 0...10000) {
                    virtualTable1.dataSource.add({
                        colX: true,
                        colA: "A" + (virtualTable1.dataSource.size + 1),
                        colB: "B" + (virtualTable1.dataSource.size + 1),
                    });
                }
                virtualTable1.dataSource.allowCallbacks = true;
                main.findComponent("virtualTableCount1", Label).text = "" + virtualTable1.dataSource.size + " Items";
            }
            
            app.start();
        });
    }
}
