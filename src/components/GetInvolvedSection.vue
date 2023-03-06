<template>
    <section class="container mt-5 ">
        <h2 class="hidden">Get Involved Section</h2>
        <h3 class=" font-family mb-2 display-5 text-uppercase highlight-eminence text-left">Get
            Involved</h3>
        <p class="pStyle mb-4">See below three interviews about women's hockey life</p>
        <div class="row">
            <div class="col-md-4 no-padding">
                <router-link :to="{ name: 'interview', params: { id: 1 } }">
                    <b-img src="/images/camila-dubera-interview-pic.jpg" fluid alt=" Camila Dubera"></b-img>
                </router-link>
            </div>
            <div class="col-md-4 no-padding">
                <b-img src="/images/sabrina-tripla-interview-pic.jpg" fluid alt=" Sabrina Tripla"></b-img>
            </div>
            <div class="col-md-4 no-padding">
                <b-img src="/images/hillary-brennan-interview-pic.jpg" fluid alt=" Hillary Brennan"></b-img>
            </div>
        </div>
        <div class="row text-center box">
            <b-img class="arrow" src="/images/arrow_white_hero.svg" alt="Logo Image"></b-img>
            <div class="col-12 col-md-6 color-box-eminence">
                <div class="get-involved-text-container">
                    <p class="font-family-secondary h5 color-westar">It's time for hockey to change<br><span
                            class="color-westar ">#NoMoreSilence</span> <br>
                        The only way the game will grow <br>is to
                        stop bullying and start to <br>make our life better together.</p>
                </div>
            </div>

            <div class="col-12 col-md-6 text-center align-self-center share">
                <router-link to="/contact">
                    <b-button size="lg" variant="info">SHARE YOUR EXPERIENCE</b-button>
                </router-link>
                <p class="highlight-eminence h3 font-weight-bold mt-2 ">#WeAreAllHockey</p>
            </div>
        </div>
    </section>
</template>


<script>
export default {
    name: 'GetInvolvedSection'
}
</script>

<style lang="scss">
.box {
    height: 400px;

    .arrow {
        height: 100%;
        position: absolute;
        z-index: 10;
        padding: 20px;
    }

    .color-box-eminence {
        height: 400px;
        background-color: $eminence;

        .get-involved-text-container {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }
    }

    .share {
        position: absolute;
        bottom: 0;

        @include tablet {
            position: relative;
        }

        p {
            color: $westar;

            @include tablet {
                color: $eminence;
            }
        }


    }
}




.font-family-seconday {
    font-size: $secondary-font;
}

.color-westar {
    color: $westar;
}

.pStyle {
    font-size: 1.5rem;
    font-family: $secondary-font;
    font-weight: 400;
}
</style>

