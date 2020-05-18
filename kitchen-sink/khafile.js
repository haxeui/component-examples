let project = new Project('Main');

//project.addAssets('./assets/**');
project.addSources('./src');

project.addLibrary('haxeui-core');
project.addLibrary('haxeui-kha');
project.addLibrary('hscript');
project.addLibrary('haxeui-theme-kenney');

resolve(project);
