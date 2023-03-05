<script setup>
import DescriptionSection from '../components/DescriptionSection.vue';
import FooterSection from '../components/FooterSection.vue';
import GetInvolvedSection from '../components/GetInvolvedSection.vue';
import HeaderSection from '../components/HeaderSection.vue';
import VideoSection from '../components/VideoSection.vue';
import axios from 'axios';
</script>

<script>
export default {
  mounted() {
    axios.get('/includes/data/LoadInterviewsAction.php?id=all').then(res => {
      console.log(res.data)
    }).catch(err => {
      console.error(err)
    });
  }
}
</script>

<template>
  <main id="body">
    <HeaderSection />
    <DescriptionSection />
    <GetInvolvedSection />
    <VideoSection />
    <FooterSection />
  </main>
</template>
<style lang="scss">
main {
  max-width: 1920px;
  // max-width: 1280px;
  margin: auto;
}

.container {
  max-width: 1280px;
  // margin: auto;
  // max-width: 1920px !important;

}

.containerHero {

  margin: auto;
  max-width: 1920px !important;

}
</style>
