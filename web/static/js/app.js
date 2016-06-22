// Brunch automatically concatenates all files in your
// watched paths. Those paths can be configured at
// config.paths.watched in "brunch-config.js".
//
// However, those files will only be executed if
// explicitly imported. The only exception are files
// in vendor, which are never wrapped in imports and
// therefore are always executed.

// Import dependencies
//
// If you no longer want to use a dependency, remember
// to also remove its path from "config.paths.watched".
import 'phoenix_html'
import Vue from 'vue';
import VueRouter from 'vue-router';
import VueResource from 'vue-resource';

//Pages
import layout from './layout';
import foo from './pages/foo';
import bar from './pages/bar';

Vue.use(VueRouter);
Vue.use(VueResource);

Vue.http.options.root = '/api';

let router = new VueRouter();
router.map({
  '/foo': {
    component: foo
  },
  '/bar': {
    component: bar
  }
});

router.start(layout, '#app');

// Import local files
//
// Local files can be imported directly using relative
// paths "./socket" or full ones "web/static/js/socket".

// import socket from "./socket"
