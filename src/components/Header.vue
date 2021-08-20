<template>
  <div class="header">
    <div class="wrapper">
      <router-link :to="{name:'root'}">
        <img src="../assets/cnodejs_light.svg">
      </router-link>
      <div class="topInputWrapper">
        <input class="topInput" name="wd" type="text" v-model="search" @keyup.enter="searchBD(search)">
      </div>
    </div>
    <ul>
      <li><a href="#">首页</a></li>
      <li><a href="#">源码仓库</a></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Header',
  data() {
    return {
      search: ''
    }
  },
  methods: {
    searchBD(search) {
      search = encodeURIComponent(search)
      window.open('https://www.baidu.com/s?wd=site:cnodejs.org+' + search)
    }
  }
}

</script>

<style scoped>
.topInputWrapper{
  padding-left: 30px;
}
.topInput {
  box-shadow: none;
  height: 20px;
  border-radius: 15px;
  background: #888888 url('../assets/search.png') no-repeat 4px 4px;
  border: none;
  transition: all 0.5s;
  padding:3px 5px 3px 22px ;
}

.topInput:hover {
  background: white url('../assets/search.png') no-repeat 4px 4px;

}

.topInput:focus{
  background: white url('../assets/search.png') no-repeat 4px 4px;
  outline: none;
}

.header {
  background-color: #444444;
  height: 50px;
  width: 100%;
  display: flex;
  align-items: center;
  flex-grow: 1;
  justify-content:space-between;
}

ul {
  list-style: none;
  display: flex;
  margin-right: 5%;
}

li {
  padding: 10px 15px;
}

a {
  text-decoration: none;
  color: #ccc;
  font-size: 14px;
  text-shadow: none;
}

.wrapper {
  display: flex;
  align-items: center;
  margin-left: 10%;
}

.wrapper img {
  height: 48px;
  width: 140px;
  padding-bottom: 2px;
}
</style>
