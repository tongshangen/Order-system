<template>
  <div id="app">
    <router-view></router-view>
    <router-view name='header'></router-view>
    <router-view name='datagrid'></router-view>
    <router-view name='footer'></router-view>
  </div>
</template>

<script>
  export default {}
</script>

<style lang="scss">
</style>
