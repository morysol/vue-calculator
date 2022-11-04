<template>
  <img alt="Vue logo" src="./assets/logo.png" />
  <SimpleCalculator msg="Calculate here" />
</template>

<script>
import SimpleCalculator from "./components/SimpleCalculator.vue";

export default {
  name: "App",
  components: {
    SimpleCalculator,
  },
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  width: 200px;
  margin: 0 auto;
}

input[type="text"] {
  border: 0;
  color: #2c3e50;
  font-size: 18px;
  padding: 10px;
  text-align: right;
}

.grid {
  width: 100%;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-around;
}

.cell {
  width: 33%;
  height: 50px;
  font-size: 18px;
}

.num {
  /*  */
  color: #fff;
  background-color: #2c3e50;
  font-weight: 700;
}
.math {
  width: 100%;
  color: #2c3e50;
  background-color: #fff;
  font-weight: 700;
}
</style>
