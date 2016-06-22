<template>
  <p>
    You are viewing the <span class="bar">bar</span>-page
  </p>
  <p v-if="response">
    API-Response from Server: {{response | json}}
  </p>
  <p v-else>
    Loading API-Data...
  </p>
</template>

<script>
  export default {
    // Options / Data
    data () {
      return {
        response: undefined
      }
    },
    props: [],
    computed: {},
    methods: {
      update() {
        //TODO Create mixin
        this.response = undefined;
        this.$http.get('bar').then((response) => {
          this.response = response.data;
        }, (response) => {

        });
      }
    },
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
    ready () {
      this.update();
    },
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
.bar {
  font-size: 4rem;
}
</style>
