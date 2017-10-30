<<<<<<< HEAD
=======
<template>
    <div id="menu_datagrid">
        <div class="page">
            <i></i>
            <p>中餐</p>
        </div>
        <ul>
            <li>
                <div class="img">
                <img src="../../img/001.jpg" alt="" />
                </div>
                <div class="centent">
                    <h2>红烧猪脚 (500g)</h2>
                    <p class="des">大厨出品必属精品!!</p>
                    <div>
                    <p class="dex">￥<span>75</span></p>
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

    export default{
        data: function(){
            return {
                datagrid: []
            }
        },

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
>>>>>>> c320e85e72d454b752f36b9dbeee596e054f9e31
