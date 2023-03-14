<script setup>
import HeaderSection from '../components/HeaderSection.vue';
import FooterSection from '../components/FooterSection.vue';
import axios from 'axios';
</script>

<script>

export default {
    data() {
        return {
            interview: {},
            qas: [],
            currentInterview: {}
        };
    },
    mounted() {
        this.currentInterview = +this.$route.params.id;
        if (this.currentInterview > 3) {
            this.currentInterview = 1;
        }
        // TODO: uncomment this when going live
        axios.get('/includes/data/LoadQAAction.php?id=' + this.currentInterview).then(res => {
            this.qas = res.data;
        }).catch(err => {
            console.error(err)
        });
        // TODO: uncomment this when going dev mode
        // this.mockLoadQAAction();

        // TODO: uncomment this when going live
        axios.get('/includes/data/LoadInterviewsAction.php?id=' + this.currentInterview).then(res => {
            this.interview = res.data[0];
        }).catch(err => {
            console.error(err)
        });
        // TODO: uncomment this when going dev mode
        // this.mockLoadInterviewsAction();
    },
    methods: {
        mockLoadQAAction() {
            var mock = '[{"id":"1","qas_question":"Have you experienced bullying, violence, or disrespect at Hockey?","qas_answer":"No, the sport in Dubai is too healthy","qas_id_interview":"1"},{"id":"2","qas_question":"What do you think of the participation of women in hockey?","qas_answer":"Women\'s hockey is guaranteed up to a certain age and we have observed progress in the professionalization of women\'s sport. However, women\'s hockey in children must be strengthened and more media presence must be called for. Dubai has a good social climate for ice hockey but everything changes after the age of 14 due to the maturity of the sport in the country.","qas_id_interview":"1"}]';
            this.qas = JSON.parse(mock);
        },
        mockLoadInterviewsAction() {
            var mock = '[{"id":"1","int_name":"Camila Massaguer","int_description":"(This interview was conducted with Camila and her parents) Camila started to play Hockey because she knows this sport after a visit to a Canadian friend\'s house.","int_date":"Jan 1st, 2023","int_image":"camila-profile-710x837.jpg","int_hero":"camila-hero-image-1440x890.jpg","int_quote":"","int_enabled":"1"}]';
            this.interview = JSON.parse(mock)[0];
        },
        loadnext(event) {
            this.scrollToHero();
            this.currentInterview = this.currentInterview + 1;
            if (this.currentInterview > 3) {
                this.currentInterview = 1;
            }
            // TODO: uncomment this when going live
            axios.get('/includes/data/LoadQAAction.php?id=' + this.currentInterview).then(res => {
                this.qas = res.data;
            }).catch(err => {
                console.error(err)
            });
            // TODO: uncomment this when going dev mode
            // this.mockLoadQAAction();

            // TODO: uncomment this when going live
            axios.get('/includes/data/LoadInterviewsAction.php?id=' + this.currentInterview).then(res => {
                this.interview = res.data[0];
            }).catch(err => {
                console.error(err)
            });
            // TODO: uncomment this when going dev mode
            // this.mockLoadInterviewsAction();

        },
        scrollToHero() {
            const el = this.$el.getElementsByClassName('interview-hero-container')[0];
            console.log('scrollto: ', this.$el.getElementsByClassName('interview-hero-container')[0]);

            if (el) {
                el.scrollIntoView({ behavior: 'smooth' });
            }
        }
    }
}

</script>

<template>
    <main id="body">
        <HeaderSection :showHero="false" />
        <div class="interview-hero-container"
            v-bind:style="{ backgroundImage: 'url(/images/' + interview['int_hero'] + ')' }">
        </div>
        <div class="container">
            <div class="float-tag col-md-6 no-padding">
                <span>{{ interview['int_name'] }}</span>
            </div>
        </div>

        <section class="container box-shadow">
            <div class="row">
                <div class="col-md-6 no-padding">
                    <div class="text-box">
                        <span>{{ interview['int_description'] }}</span>
                    </div>
                    <div class="interview-secondary-img"
                        v-bind:style="{ backgroundImage: 'url(/images/' + interview['int_image'] + ')' }">
                    </div>
                </div>
                <div class="col-md-6 qa-panel">
                    <div v-for="qa in qas">
                        <div class="col-md-12">
                            <h2>{{ qa['qas_question'] }}</h2>
                        </div>
                        <div class="col-md-12">
                            <p>{{ qa['qas_answer'] }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-6 navigation-box return-to-home-box">
                    <a href="/" class="navigation-link">
                        <span>Return to homepage</span>
                        <img src="/images/arrow_left_inter.svg" alt="Return to homepage">
                    </a>
                </div>

                <div class="col-12 col-md-6 navigation-box next-interview-box">
                    <div @click.prevent="loadnext" class="navigation-link">
                        <span>Next interview</span>
                        <img src="/images/arrow_right_inter.svg" alt="Next interview">
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-6 social-call-box">
                    <span class="grey">#NoMoreBullying</span>
                </div>

                <div class="col-6 social-call-box">
                    <span class="eminence">#WeAreAllHockey</span>
                </div>
            </div>
        </section>
    </main>
</template>
<style lang="scss" scoped>
h2 {
    color: $eminence;
}

p {
    color: $scarpa-flow;
}

section {
    background-color: $white;
}

.container {
    max-width: 1280px;
    // margin: auto;
    // max-width: 1920px !important;

}

.interview-hero-container {
    position: relative;
    width: 100%;
    height: calc(100vh - 120px);
    display: flex;
    align-items: center;
    justify-content: center;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
}

.float-tag {
    margin-top: -80px;
    height: 80px;

    span {
        padding: 20px 20px 0px 40px;
        background-color: $eminence;
        height: 100%;
        width: 100%;
        display: inline-block;
        color: $westar;

        height: 80px;
        font-family: "Exo 2", sans-serif;
        font-weight: 700;
        text-transform: uppercase;
        font-size: 40px;
    }
}

.text-box {
    background-color: $eminence;
    color: $westar;
    margin: 0px 0px 15px 15px;
    padding: 0px 40px 40px 40px;
    font-family: $secondary-font;
    font-size: 20px;

    .arrow-text-box {
        rotate: 90deg;
    }
}

.interview-secondary-img {
    height: 100vh;
    width: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
}

.navigation-box {
    color: $westar;
    height: 100px;
    display: flex;

    &.return-to-home-box {
        background-color: $shuttle-gray;
    }

    &.next-interview-box {
        background-color: $eminence;
        color: $westar;
    }

    .navigation-link {
        display: flex;
        align-content: center;
        flex-direction: column;
        margin: auto;
        color: $westar;
        font-size: 2em;
        text-transform: lowercase;
        cursor: pointer;
        width: 100%;

        img {
            height: 30px;
        }

        span {
            margin: auto;
        }

        &:hover {
            text-decoration: none;
        }
    }
}

.social-call-box {
    height: 120px;
    display: flex;

    span {
        font-family: $primary-font;
        margin: auto;
        font-size: 1.5em;
        font-weight: bolder;

        @include tablet {
            font-size: 2em;
        }

        &.grey {
            color: $shuttle-gray;
        }

        &.eminence {
            color: $eminence;
        }
    }
}

.qa-panel {
    padding: 30px;

    h2 {
        font-size: 1.5rem;
    }
}
</style>
