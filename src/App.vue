<script setup>
import HeaderSection from './components/HeaderSection.vue';
import DescriptionSection from './components/DescriptionSection.vue';
import GetInvolvedSection from './components/GetInvolvedSection.vue';

</script>

<template>

  <div class="container-fluid">
    <HeaderSection />
    <router-view />
    <DescriptionSection />
    <GetInvolvedSection />

  </div>

</template>

<style lang="scss">

</style >
