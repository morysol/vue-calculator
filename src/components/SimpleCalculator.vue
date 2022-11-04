<template>
  <!-- <div class="calculator"> -->
  <div id="calculator">
    <h1>{{ msg }}</h1>
    <p>{{ total }}</p>
    <div class="grid">
      <input type="text" v-model="result" placeholder="0" />

      <div>
        <button
          class="cell num"
          @click="input(num)"
          v-for="num in numbers"
          :key="num"
        >
          {{ num }}
        </button>
      </div>
      <div class="math">
        <button
          class="cell"
          @click="input(operation)"
          v-for="operation in operations"
          :key="operation"
        >
          {{ operation }}
        </button>
      </div>
      <div class="tools">
        <button @click="calculate()">calc</button>
        <button @click="undo()">undo</button>
        <button @click="redo()">redo</button>
        <button @click="reset()">clear</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "SimpleCalculator",

  props: {
    msg: String,
  },
  data: function () {
    return {
      result: "",
      history: [],
      position: 0,
      total: "",
      numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
      operations: ["+", "-", "*", "/"],
    };
  },
  methods: {
    input(char) {
      this.result += char;
    },
    reset() {
      this.result = "";
      this.history = [];
      this.total = "";
    },
    undo() {
      if (this.position > 0) {
        this.position -= 1;
      }

      this.total = this.history.slice(0, this.position).join(", ");

      this.result = this.history[this.position - 1];
      this.result = eval(this.result).toString();
    },
    redo() {
      if (this.position < this.history.length) {
        this.position += 1;
      }
      this.result = this.history[this.position - 1];
      this.total = this.history.slice(0, this.position).join(", ");
      this.result = eval(this.result).toString();
    },
    setValue(value) {
      if (this.position < this.history.length - 1) {
        this.history = this.history.slice(0, this.position + 1);
      }

      this.history.push(value);
      this.position += 1;
    },

    calculate() {
      console.log(this.position);
      console.log(this.history.length);
      this.history = this.history.slice(0, this.position);
      this.history.push(this.result);
      this.position += 1;

      this.total = this.history.slice(0, this.position).join(", ");
      this.result = eval(this.result).toString();
    },
  },
};
</script>
