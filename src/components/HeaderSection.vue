<template>
    <section class="header-section">
        <div class="containerHero d-flex justify-content-center logo-container">
            <div>
                <h1 class="hidden">We Are All Hockey</h1>
                <a href="/">
                    <b-img src="/images/logo_we-are-all-hockey-v.svg" fluid alt="Logo Image"></b-img>
                </a>
            </div>
        </div>
        <h2 class="hidden">Header Section</h2>
        <div class="hero-container containerHero" v-if="showHero">
            <div class="gridContainer">
                <div class="hockeyText">
                    <h2 class="font-weight-bold highlight-white">
                        HER HOCKEY
                    </h2>
                </div>
                <div class="voiceText">
                    <h2 class="font-weight-bold highlight-eminence-purple">
                        HER VOICE
                    </h2>
                </div>
            </div>
            <div>
                <b-img class="arrowHero" src="/images/arrow_hero.svg" alt="Logo Image"></b-img>
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
.header-section {
    background-color: $white;
}

.hero-container {
    position: relative;
    width: 100%;
    height: calc(100vh - 120px);
    background-size: cover;
    background-position: center;
    display: grid;
    object-fit: cover;
    background-repeat: no-repeat;
    background-image: url(/images/hero-image-1440x890-2.png);
    background-attachment: fixed;



    .voiceText {
        color: $eminence02;
    }

    .hockeyText,
    .voiceText {
        @include tablet {
            h2 {
                font-size: 5em;
            }

            padding: 0px 50px 0 50px;
        }

    }
}


.logo-container {
    height: 120px;

    img {
        width: 120px;
        background-color: $white;
        margin-top: 20px;
        margin-bottom: 20px;
    }
}

.logo-container .highlight-eminence-purple {
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
    width: auto;
    margin-top: 20px;
    right: 20px;

    height: 95%;
}
</style>