<template>
    <div id="menu_datagrid">
        <div class="page">
            <i></i>
            <p>中餐</p>
        </div>
        <ul>
<<<<<<< HEAD
            <li>
                <div class="img">
                <img src="../../img/001.jpg" alt="" />
                </div>
                <div class="centent">
                    <h2>红烧猪脚 (500g)</h2>
                    <p class="des">大厨出品必属精品!!</p>
                    <div>
                    <p class="dex">￥<span>75</span></p>
=======
            <li v-for="(value, index) in datagrid">
                <div class="img" >
                
                <img :src="value.src"  alt="" />
                </div>
                <div class="centent">
                    <h2>{{value.name}}</h2>
                    <p class="des">{{value.datails}}</p>
                    <div>
                    <p class="dex">￥<span>{{value.price}}</span></p>
>>>>>>> 3cc5265d10ebb1a0c1138a1c2b4534a5d2a2fe74
                    <i class="glyphicon glyphicon-plus-sign"></i>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</template>

<script type="text/javascript">
    import './menu_datagrid.scss'
    import http from '../../utils/httpClient.js'

<<<<<<< HEAD
    export default{
=======
    export default {
>>>>>>> 3cc5265d10ebb1a0c1138a1c2b4534a5d2a2fe74
        data: function(){
            return {
                datagrid: []
            }
        },
<<<<<<< HEAD

=======
>>>>>>> 3cc5265d10ebb1a0c1138a1c2b4534a5d2a2fe74
        mounted: function(){
            var self = this;
            http.post({
                url: "select"
            }).then(res => {
                self.datagrid = res.data
                console.log(res.data)
            })
        }
    }
</script>