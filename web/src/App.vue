<template>
  <div id="app">
    <router-view></router-view>
    <router-view name='header'></router-view>
    <router-view name='datagrid'></router-view>
    <router-view name='left'></router-view>
    <router-view name='footer'></router-view>
  </div>
</template>

<script>

    
    $(window).mousedown(function(e){

        $('ul').css({top:-30})

    })
    $('#menu_left').mousedown(function(er){
        console.log(123)
    })
  export default {}
</script>

<style lang="scss">
</style>
