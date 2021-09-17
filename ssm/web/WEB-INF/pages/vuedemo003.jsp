<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/16
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>v-on v-show v-for</title>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>
</head>
<body>
        <div id="app">
            <%--v-on 后面接的是 HTML中是事情，而v-bind 接的是HTML中的属性--%>
            <input type="button" value="点击在ul中显示葫芦娃的列表" v-on:click="showHulouwu()">
          <%-- <ul>
               <li v-for="(item,index) in hulus" :key="hulus.id">{{item.name}}</li>
           </ul>--%>

            <select>
                <option v-for="(item,index) in hulus" :key="hulus.id">{{item.name}}</option>
            </select>

            <textarea v-for="(item,index) in hulus" :key="hulus.id">{{item.spell}}</textarea>
        </div>

    <script>
     var vm =new Vue({
         el:"#app",
         data:{
             hulus:[

             ],
         },
         methods:{
             showHulouwu:function () {
                 //alert("弹框")
                 var arr=[
                     {
                         id:1,
                         name:"大娃",
                         spell:"变大，力大无穷",
                     },
                     {
                         id:2,
                         name:"二娃",
                         spell:"千里眼，顺风耳",
                     },
                     {
                         id:3,
                         name:"三娃",
                         spell:"铜头铁臂",
                     },
                     {
                         id:4,
                         name:"四娃",
                         spell:"火娃",
                     },
                     {
                         id:6,
                         name:"六娃",
                         spell:"隐身",
                     }
                 ]
                 this.hulus=arr;
             }

         }

     })
        </script>

</body>
</html>
