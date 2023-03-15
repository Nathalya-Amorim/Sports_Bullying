<template>
    <section class="container mt-5 ">
        <h2 class="hidden">Get Involved Section</h2>
        <h3 class=" font-family mb-2 display-5 text-uppercase highlight-eminence text-left">Get
            Involved</h3>
        <p class="pStyle mb-4">Read below three interviews about women's hockey life</p>
        <div class="row">
            <div class="col-md-4 no-padding">
                <!-- <router-link :to="{ name: 'interview', params: { id: 1 } }">
                    <b-img src="/images/camila-dubera-interview-pic.jpg" fluid alt=" Camila Dubera"></b-img>
                </router-link> -->
                <a href="/interview/1" class="interview-link" alt="Camila Dubera Interview">
                    <img src="/images/purple-gradient.png" class="img-fluid filter" alt="Camila Dubera Interview" />
                    <img src="/images/camila-dubera-interview-pic.jpg" class="img-fluid" alt="Camila Dubera Interview" />
                    <span class="name-caption">Camila Dubera</span>
                    <span class="read-more-caption">read more</span>
                </a>
            </div>
            <div class="col-md-4 no-padding">
                <a href="/interview/2" class="interview-link" alt="Sabrina Trintafillou Interview">
                    <img src="/images/orange-gradient.png" class="img-fluid filter" alt="Sabrina Trintafillou Interview" />
                    <img src="/images/sabrina-tripla-interview-pic.jpg" class="img-fluid"
                        alt="Sabrina Trintafillou Interview" />
                    <span class="name-caption">Sabrina Trintafillou</span>
                    <span class="read-more-caption">read more</span>
                </a>
            </div>
            <div class="col-md-4 no-padding">
                <a href="/interview/3" class="interview-link" alt="Hillary Brennan Interview">
                    <img src="/images/purple-gradient.png" class="img-fluid filter" alt="Hillary Brennan Interview" />
                    <img src="/images/hillary-brennan-interview-pic.jpg" class="img-fluid"
                        alt="Hillary Brennan Interview" />
                    <span class="name-caption">Hillary Brennan</span>
                    <span class="read-more-caption">read more</span>

                </a>
                <b-img class="arrowHero" src="/images/arrow_white_hero.svg" alt="Logo Image"></b-img>
            </div>
        </div>
        <div class="row text-center box">
            <b-img class="arrow" src="/images/arrow_white_hero.svg" alt="Logo Image"></b-img>
            <div class="col-12 col-md-6 color-box-eminence no-padding">
                <div class="get-involved-text-container">
                    <p class="font-family-secondary h5 color-westar">It's time for hockey to change</p>
                    <span class="color-westar hashtag">#NoMoreSilence</span>
                    <p class="font-family-secondary h5 color-westar">The only way the game will grow<br>
                        is to stop bullying and start to <br>
                        make our life better together.<br></p>

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

    @include tablet {
        // height: 400px;
    }

    .arrow {
        height: 100%;
        position: absolute;
        z-index: 10;
        padding: 20px;
    }

    .color-box-eminence {
        height: 300px;
        background-color: $eminence;

        .get-involved-text-container {
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);

            .hashtag {
                font-size: 2em;
                font-weight: bold;
                margin-top: 10px;
                margin-bottom: 10px;
            }

            p {
                font-size: 20px;
                font-family: $secondary-font;

            }
        }
    }

    .share {
        background-color: $eminence;
        bottom: 0;
        padding-top: 20px;
        padding-bottom: 20px;

        @include tablet {
            position: relative;
            background-color: $white;
        }

        p {
            color: $westar;

            @include tablet {
                color: $eminence;
            }
        }

        button:hover {
            background-color: $white;
            border: 2px solid #17a2b8;
            color: #17a2b8;
        }


    }
}

.interview-link {
    .filter {
        position: absolute;
        z-index: 10;
        opacity: 1;
        transition: all ease-in-out .5s;

        &:hover {
            opacity: 0;
        }
    }
}

.name-caption {
    position: absolute;
    width: 100%;
    display: inline-block;
    text-align: center;
    margin-left: -100%;
    margin-top: 85%;
    color: $white;
    z-index: 100;
    opacity: 1;
    transition: all ease-in-out .3s;
    text-transform: uppercase;
    font-family: $primary-font;
    font-weight: bold;
    font-size: 1.7em;
}

.read-more-caption {
    position: absolute;
    width: 100%;
    display: inline-block;
    text-align: center;
    margin-left: -100%;
    margin-top: 95%;
    color: $white;
    z-index: 100;
    opacity: 1;
    transition: all ease-in-out .3s;
    text-transform: uppercase;
    font-family: $primary-font;
    font-size: 1.2em;
}

a:hover {
    .name-caption {
        opacity: 0;
    }

    .read-more-caption {
        opacity: 0;
    }
}

.font-family-seconday {
    font-size: $secondary-font;
}

.color-westar {
    color: $westar;
}

.pStyle {
    font-size: 20px;
    font-family: $secondary-font;
    color: $scarpa-flow;
}
</style>

