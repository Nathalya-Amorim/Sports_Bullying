<script setup>
import FooterSection from '../components/FooterSection.vue';
import HeaderSection from '../components/HeaderSection.vue';
</script>

<script>
export default {

}
</script>

<template>
    <main id="body">
        <HeaderSection :showHero="false" />
        <div class="contact-hero-container">
        </div>
        <section class="container">
            <div class="contact-box align-self-center box-shadow">
                <h2>Who we are?</h2>
                <p>We believe that empowering women in hockey is the to ending bullying. Connect with us and let's start the
                    journey towards empowerment and positve changes.</p>
            </div>
        </section>
        <div class=" gray-box"></div>
        <FooterSection />
    </main>
</template>
<style lang="scss" scoped>
label {
    color: $westar;
}

.error {
    color: $westar;
}

.contact-hero-container {
    position: relative;
    width: 100%;
    height: calc(100vh - 120px);
    display: flex;
    align-items: center;
    justify-content: center;
    background-image: url(/images/contact-hero-image-1440x890.jpg);
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
}

.container {
    margin-top: -80px;
    margin-bottom: -80px;
    z-index: 2;
    position: initial;

    h2 {
        height: 80px;
        font-family: "Exo 2", sans-serif;
        text-transform: uppercase;
    }

    h2,
    p {
        color: $westar;
    }

    .contact-box {
        background-color: $eminence;
        padding: 20px 40px 20px 40px;
        margin-left: 20px;
        margin-right: 20px;


        @include tablet {
            margin-left: 100px;
            margin-right: 100px;
        }
    }
}

.gray-box {
    height: 160px;
    width: 100%;
    margin: auto;
    background-color: #DEDEDE;
    position: initial;
}
</style>
