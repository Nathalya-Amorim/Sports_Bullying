<script setup lang="ts">
// import HeaderSection from '../components/HeaderSection.vue';
</script>

<template>
  <main id="body">
    <div class="hero-container">
      <div class="logo-container">
        <h1 class="hidden">We Are All Hockey</h1>
        <b-img src="../../public/images/logo_we-are-all-hockey-v.svg" fluid alt="Logo Image"></b-img>
      </div>
    </div>
    <div class="float-tag col-md-6">
      <span>ahsiduasiduh</span>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="text-box">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur, nunc in
          bibendum malesuada, diam risus commodo libero, id bibendum libero enim in nibh. Morbi euismod erat quam, at
          congue mauris tincidunt id. Fusce ac neque vel nibh feugiat fringilla vel at turpis. Sed vel velit vel nulla
          tempus malesuada. Aenean consectetur, est ut tincidunt faucibus, risus dolor fermentum qu</div>
        <div class="interview-secondary-img"></div>
      </div>
      <div class="col-md-6">
        <div class="col-md-12">
          <h2>Title</h2>
        </div>
        <div class="col-md-12">
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam efficitur, nunc in
            bibendum malesuada, diam risus commodo libero, id bibendum libero enim in nibh. Morbi euismod erat quam, at
            congue mauris tincidunt id. Fusce ac neque vel nibh feugiat fringilla vel at turpis. Sed vel velit vel nulla
            tempus malesuada. Aenean consectetur, est ut tincidunt faucibus, risus dolor fermentum qu</p>
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
  background-image: url(https://via.placeholder.com/1900x760);
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
  background-image: url(https://via.placeholder.com/900X900);
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
