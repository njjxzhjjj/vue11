<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/9/14
  Time: 16:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script src="//cdn.bootcss.com/vue/2.5.2/vue.min.js"></script>

<html>
<head>
    <title>新增业务</title>

</head>
<body>
            <h1>新增业务</h1>
            <form action="" method="post">
                业务类型：<select name="typeId" id="typeId">
                <option value="1">信用卡</option>
                <option value="2">储蓄卡</option>
                <option value="3">VIP卡</option>
            </select>
                <ul id="huluwa">
                    <li></li>
                </ul>
            <br>
                排队号：<input type="text" name=""><br>
                备注信息：<textarea name=""  cols="30" rows="10"></textarea>
                <br>
                <input type="submit" value="确定添加">
            </form>

            <div>

            </div>
            请选择你的英雄:<select name=" " id="heroSelect">
                <option value="1">韩信</option>
                <option value="2">小乔</option>
                <option value="3">大乔</option>
            </select>

            <script>
                $(function () {
                  /*  $.ajax({
                        url:"/type/selectAll",
                        type:'post',
                        dataType:'json',
                        success:function (res) {
                            console.log(res)
                            console.log(res.data);
                            //给id渲染数据
                            $("#typeId").empty();//清空
                            var select = $("#typeId")
                            //遍历 数组
                            $.each(res.data,function (index, item) {
                                select.append(new Option(item.typeName));// 下拉菜单里添加元素 异步下拉
                            });
                        }
                    });*/


                    //使用高级版的ajax，axios 异步请求
                    //为给定ID的user创建请求
                    // 为给定 ID 的 user 创建请求
                    axios.get('/type/selectAll')
                        .then(function (response) {  //ajax中的success
                            console.log(response.data.data);  // vue
                          /*  $("#typeId").empty();//清空
                            var select = $("#typeId")
                            $.each(response.data.data,function (index, item) {
                                select.append(new Option(item.typeName));// 下拉菜单里添加元素 异步下拉
                            });*/
                        })
                        .catch(function (error) { //ajax中的error
                            console.log(error);
                        });


                   /* //jQuery 的数据遍历！！！ $.each(数组，方法(数组索引，具体的值){方法执行体})
                    var names=new Array();  //list<String> names=new ArrayList();
                    names.push("唐僧");  //0    //() 是对象 对象都可以成为JSON  [] 是数组  {} 集合  {（）} 对象集合
                    names.push("悟空");  //大号都是对象，对象都可以成为json  //中括号都是数组(集合)//中括号可以包含很多大括号。这叫对象集合
                    names.push("八戒");
                    names.push("沙僧");
                    names.push("小白龙");// 4
                    console.log(names);
                    //给id渲染数据
                    $("#heroSelect").empty();//清空
                    $.each(names,function (index,item) {//item 随便写
                        console.log(index)
                        console.log(item)
                        console.log("------------------")
                        $("#heroSelect").append($("<option value='3'>"+item+"</option>"))
                    });*/



                    // 作业1 ： 刘顺顺， 自己 写一个葫芦娃的数组 ，
                    // ul --- li ， 把以上 葫芦娃的数据 遍历到  li 标签当中
                    var names=new Array();  //list<String> names=new ArrayList();
                    names.push("大娃");
                    names.push("二娃");
                    names.push("三娃");
                    names.push("四娃");
                    names.push("五娃");
                    names.push("六娃");
                    names.push("七娃");
                    $("#huluwa").empty();//清空
                    $.each(names,function (index,item) {//item 随便写
                        console.log(index)
                        console.log(item)
                        console.log("------------------")
                        $("#huluwa").append($("<li value='3'>"+item+"</li>"))
                    });
                });

            </script>
</body>
</html>
