<script setup>
import HeaderSection from '../components/HeaderSection.vue';
import axios from 'axios';
</script>

<script>

export default {
  data() {
    return {
      interview: {},
      qas: []
    };
  },
  mounted() {
    axios.get('/includes/data/LoadQAAction.php?id=' + this.$route.params.id).then(res => {
      this.qas = res.data;
    }).catch(err => {
      console.error(err)
    });

    axios.get('/includes/data/LoadInterviewsAction.php?id=' + this.$route.params.id).then(res => {
      this.interview = res.data[0];
    }).catch(err => {
      console.error(err)
    });
  }
}

</script>

<template>
  <main id="body">
    <HeaderSection :showHero="false" />
    <div class="interview-hero-container"
      v-bind:style="{ backgroundImage: 'url(/images/' + interview['int_hero'] + ')' }">
    </div>
    <div class="float-tag col-md-6">
      <span>{{ interview['int_name'] }}</span>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="text-box">{{ interview['int_description'] }}</div>
        <div class="interview-secondary-img"
          v-bind:style="{ backgroundImage: 'url(/images/' + interview['int_image'] + ')' }">
        </div>
      </div>
      <div class="col-md-6">
        <div v-for="qa in qas">
          <div class="col-md-12">
            <h2>{{ qa['qas_question'] }}</h2>
          </div>
          <div class="col-md-12">
            <p>{{ qa['qas_answer'] }}</p>
          </div>
        </div>
      </div>
      <div class="col-6 return-to-home-box">
        <router-link :to="{ name: 'home' }">
          <span>Return to homepage</span>
        </router-link>
      </div>

      <div class="col-6 next-interview-box">
        <router-link :to="{ name: 'interview', params: { id: $route.params.id + 1 } }">
          <span>Next interview</span>
        </router-link>
      </div>
    </div>
  </main>
</template>
<style lang="scss" scoped>
h2 {
  color: $eminence;
}

p {
  color: $scarpa-flow;
}

.interview-hero-container {
  position: relative;
  width: 100%;
  height: 750px;
  display: flex;
  align-items: center;
  justify-content: center;
  background-repeat: no-repeat;
  // background-image: url(https://via.placeholder.com/1900x760);
}

.float-tag {
  margin-top: -50px;
  height: 50px;

  span {
    padding: 10px;
    background-color: $eminence-09;
    height: 100%;
    width: 100%;
    display: inline-block;
    color: $westar;
  }
}

.text-box {
  background-color: $eminence-05;
  color: $westar;
  margin: 0px 0px 15px 15px;
}

.interview-secondary-img {
  height: 900px;
  width: 900px;
  // background-image: url(https://via.placeholder.com/900X900);
  background-repeat: no-repeat;
}

.return-to-home-box {
  background-color: $eminence;
  color: $westar;
  height: 100px;

  span {
    width: 100%;
    height: 100%;
    display: block;
  }
}

.next-interview-box {
  background-color: black;
  color: $westar;

  span {
    width: 100%;
    height: 100%;
    display: block;
  }
}
</style>
