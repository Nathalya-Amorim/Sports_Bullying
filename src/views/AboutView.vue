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
                <h2>Our Story </h2>
                <p><span class="highlight-flame-pea ">Laura Albarracin</span>, <span class="highlight-eastern-blue">Mariia
                        Shevchenko</span>, <span class="highlight-punch">Nathálya
                        Menezes</span> , and
                    <span class="highlight-flame-pea">Tallyta Triolo</span> were classmates at Fanshawe
                    College's Interactive Media Design program. They came together to create the "We Are All Hockey"
                    campaign to raise awareness about bullying against women in hockey and promote inclusivity in the sport.
                    They designed a website, organized workshops, and gained support from the hockey community and beyond.
                    Their campaign became a movement, and they continue to advocate for inclusivity and equality in all
                    aspects of life.<br>
                    <br>
                    Today, "We Are All Hockey" is a well-known and respected campaign that has made a positive impact on the
                    hockey community. Its founders remain dedicated to their cause and continue to work together to promote
                    their message and make a difference.
                </p>
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

    h2 {
        font-family: $primary-font;
        color: $westar;
        font-weight: 700;
    }

    p {
        color: $westar;
        font-family: $secondary-font;
        font-size: 20px;
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
