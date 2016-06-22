<template>
  <div>
    <h1>PhoenixVueTemplate Start</h1>
    <ul>
      <li>
        <a class="item" v-link="{ path: '/foo' }">Goto Foo</a>
      </li>
      <li>
        <a class="item" v-link="{ path: '/bar' }">Goto Bar</a>
      </li>
    </ul>
    <div class="container">
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
  export default {
    // Options / Data
    data () {
      return {}
    },
    props: [],
    computed: {},
    methods: {}// ,
    // watch: {},
    // Options / DOM
    // el () {},
    // replace: true,
    // template: '',
    // Options / Lifecycle Hooks
    // init () {},
    // crated () {},
    // beforeCompile () {},
    // compiled () {},
    // ready () {},
    // attached () {},
    // detached () {},
    // beforeDestroy () {},
    // destroyed () {},
    // Options / Assets
    // directives: {},
    // elementDirectives: {},
    // filters: {},
    // components: {},
    // transitions: {},
    // partials: {},
    // Options / Misc
    // parent: null,
    // events: {},
    // mixins: [],
    // name: ''
  }
</script>

<style scoped>
</style>
