<template>
    <div class="hear_cont">
        <div id="menu_header">
            <router-link to="/"><i class="glyphicon glyphicon-chevron-left"></i></router-link>
            <h1>1986西餐厅{{$route.params.zid}}</h1>
            <b class="glyphicon glyphicon-menu-hamburger"></b>
            <input type="text" placeholder="搜索菜品"/>
        </div>
    </div>
</template>


<script type="text/javascript">
    import './menu_header.scss'
    export default{}
</script>