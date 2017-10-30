<template>
    <div id="menu_datagrid">
        <div class="page" v-for="(datagrid, index) in 8" >
            <i></i>
            <!-- <p>{{datagrid[index*8].intro}}</p> -->
            <p>{{datagrid}}</p>
        </div>
        <ul>
            <li v-for="(value, index) in datagrid">
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

                // <div class="page">
                //     <i></i>
                //     <p>热销</p>
                // </div>
                console.log(res.data)
            })
        }
    }
</script>