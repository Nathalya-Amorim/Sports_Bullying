<script setup>
import axios from 'axios';
import FooterSection from '../components/FooterSection.vue';
import HeaderSection from '../components/HeaderSection.vue';
</script>

<script>
export default {
    data() {
        return {
            formData: {
                name: '',
                email: '',
                message: '',
                subject: ''
            },
            error: ''
        }
    },
    methods: {
        onSubmit(event) {
            event.preventDefault();
            console.log("Sending mail with: ", this.formData);

            if (!this.formData.name || !this.formData.email || !this.formData.message) {
                this.error = 'Please fill all required fields.';
            } else {
                console.log(this.formData);

                axios.post('/includes/data/SendContactAction.php', this.formData)
                    .then(res => console.log(res.data))
                    .catch(err => console.log(err));

                axios.post('/includes/mail/Mail.php', this.formData)
                    .then(res => console.log(res.data))
                    .catch(err => console.log(err));
            }
        }
    }
}
</script>

<template>
    <main id="body">
        <HeaderSection :showHero="false" />
        <div class="contact-hero-container">
        </div>
        <section class="container">
            <div class="contact-box align-self-center box-shadow">
                <h2>Take a stand</h2>
                <p>We believe that empowering women in hockey is the to ending bullying.<br> Connect with us and let's
                    start
                    the
                    journey towards empowerment and positve changes.</p>
                <p v-if="error" class="error">{{ error }}</p>
                <div class="form-container mx-auto">
                    <b-form @submit="onSubmit">
                        <div class="mb-3">
                            <label for="name">Name *</label>
                            <b-form-input id="name" v-model="formData.name" placeholder="Full name"></b-form-input>
                        </div>
                        <div class="mb-3">
                            <label for="email">Email *</label>
                            <b-form-input id="email" v-model="formData.email" placeholder="name@example.com"
                                type="email"></b-form-input>
                        </div>
                        <div class="mb-3">
                            <label for="message">Message *</label>
                            <b-form-textarea id="message" v-model="formData.message" placeholder="Your message..." rows="3"
                                max-rows="6">
                            </b-form-textarea>
                        </div>
                        <div class="mb-3">
                            <b-button type="submit" variant="btn btn-info">Send</b-button>
                        </div>
                        <span class="color-westar">copyright @All rights reserved</span>
                    </b-form>
                </div>
            </div>

        </section>
        <div class=" gray-box"></div>
        <FooterSection />
    </main>
</template>
<style lang="scss" scoped>
label {
    color: $westar;
    font-family: $secondary-font;
    font-size: 15px;
}

.error {
    color: $westar;
    font-family: $secondary-font;
    font-size: 20px;
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
        height: 55px;
        font-family: "Exo 2", sans-serif;
        text-transform: uppercase;
        font-weight: bold;
        color: $westar;
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

    span {
        font-family: $secondary-font;
        font-size: 12px;
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
