<template>
    <section>
        <div class="containerHero d-flex justify-content-center logo-container">
            <div>
                <h1 class="hidden">We Are All Hockey</h1>
                <b-img src="/images/logo_we-are-all-hockey-v.svg" fluid alt="Logo Image"></b-img>
            </div>
        </div>
        <h2 class="hidden">Header Section</h2>
        <div class="hero-container containerHero" v-if="showHero">
            <div>
                <b-img class="arrowHero" src="/images/arrow_white_hero.svg" fluid alt="Logo Image"></b-img>
            </div>
            <div class="gridContainer">
                <div class="hockeyText">
                    <h2 class="font-weight-bold  display-2 highlight-white">
                        HER HOCKEY
                    </h2>
                </div>
                <div class=" voiceText">
                    <h2 class="font-weight-bold  display-2 highlight-eminence-purple">
                        HER VOICE
                    </h2>
                </div>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'HeaderSection',
    props: {
        showHero: {
            default: true
        }
    }
}
</script>

<style lang="scss">
.hero-container {
    position: relative;
    width: 100%;
    // height: 750px;
    height: 100vh;
    background-size: cover;
    background-position: center;
    display: grid;
    // align-items: center;
    // justify-content: center;
    object-fit: cover;
    background-repeat: no-repeat;
    background-image: url(/images/hero-image-1440x890.jpg);


    // @include mobile {
    //     height: 50vh;
    //     background-image: url(/images/hero-image-mobile.jpg);
    // }
}

// .hero-image {
//     width: 100%;
//     height: 100%;
//     object-fit: cover;
// }

.logo-container img {
    width: 120px;
    background-color: $white;
    margin-top: 20px;
    margin-bottom: 20px;
}

.highlight-eminence-purple {
    color: $eminence02;
    font-weight: 900;

}

.highlight-eminence {
    color: $eminence;
    font-weight: 900;

}

.highlight-white {
    color: $white;
    font-weight: 900;

}


.hidden {
    display: none;
}

.gridContainer {
    position: absolute;
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 50px;
    align-self: end;
    margin-bottom: 50px;
    justify-self: center;
}

.arrowHero {
    position: absolute;
    z-index: 100;
    width: 2%;
    margin-top: 20px;

}
</style>