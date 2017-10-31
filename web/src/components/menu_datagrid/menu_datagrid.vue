<template>
    <div id="menu_datagrid">
<<<<<<< HEAD
        <div class="gai" v-for="(value, index) in datagrid">
            
        <div class="page"  v-if="index%5 == 0" >
            <i></i>
            <p>{{value.intro}}</p>
=======
        <div class="page" v-for="(datagrid, index) in 8" >
            <i></i>
            <!-- <p>{{datagrid[index*8].intro}}</p> -->
            <p>{{datagrid}}</p>
>>>>>>> 1be732d26d0a86d2cc1c9fc0cd3c1aa8fbd60355
        </div>
        <ul>
            <li>
                <div class="img" >
                <img :src="value.src"  alt="" />
                </div>

                <div class="centent">
                    <h2>{{value.name}}</h2>
                    <p class="des">{{value.datails}}</p>
                    <div>
                    <p class="dex">￥<span>{{value.price}}</span></p>
                    <i class="glyphicon glyphicon-plus-sign"></i>
                    </div>
                </div>
            </li>
        </ul>
        </div>
    </div>
</template>

<script type="text/javascript">
    import './menu_datagrid.scss'
    import http from '../../utils/httpClient.js'

    export default {
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
                self.datagrid = res.data;
<<<<<<< HEAD
=======

>>>>>>> 1be732d26d0a86d2cc1c9fc0cd3c1aa8fbd60355
                // <div class="page">
                //     <i></i>
                //     <p>热销</p>
                // </div>
                console.log(res.data)
            })
        }
    }
</script>