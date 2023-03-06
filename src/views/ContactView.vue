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
        onSubmit() {
            console.log("Sending mail with: ", this.formData);

            if (!this.formData.name || !this.formData.email || !this.formData.message) {
                this.error = 'Please fill all required fields.';
            } else {
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
        <section class="container">
            <div class="color-box-eminence">
                <p v-if="error" class="error">{{ error }}</p>
                <div class="form-container mx-auto">
                    <b-form @submit.prevent="onSubmit">
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
                        <p class="color-westar">copyright @All rights reserved</p>
                    </b-form>
                </div>
            </div>
        </section>
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
</style>
