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
    <div class="home-content container box-shadow no-padding">
      <DescriptionSection />
      <GetInvolvedSection />
      <VideoSection />
    </div>

    <FooterSection />
  </main>
</template>
<style lang="scss">
#body {
  max-width: 2800px;
}

main {
  max-width: 2800px;
  margin: auto;

  .home-content {
    background-color: $white;
  }

  .container {
    max-width: 1280px;
  }

  .box-shadow {
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
  }

  .containerHero {

    margin: auto;
    max-width: 2800px !important;

  }
}
</style>
