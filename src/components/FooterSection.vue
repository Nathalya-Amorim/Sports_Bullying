<template>
    <footer class="container">
        <h2 class="hidden">Footer Section</h2>
        <div class="row">

            <div class="col-md-6 color-box-gray ">
                <div class="mt-4">
                    <h3 class="color-westar font-weight-bold h2">We are all one</h3>
                    <h2 class="highlight-eminence">#WeAreAllHockey</h2>

                    <p class="color-westar">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore
                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                        ut
                        aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                        culpa qui officia deserunt mollit anim id est laborum.
                    </p>
                    <p class="color-westar">
                        Fanshawe College | Winter 2023
                    </p>
                </div>
            </div>

            <div class="col-md-6 color-box-eminence">
                <div class="form-container mx-auto">
                    <h3 class="color-westar font-weight-bold ">SUPPORT THIS CAMPAIGN</h3>
                    <h4 class="color-westar font-family-seconday">Leave your message</h4>
                    <b-form @submit="onSubmit">
                        <div class="mb-3">
                            <b-form-input v-model="name" placeholder="Enter you name"></b-form-input>
                        </div>
                        <div class="mb-3">
                            <b-form-input v-model="email" placeholder="name@example.com" type="email"></b-form-input>
                        </div>
                        <div class="mb-3">
                            <b-form-textarea id="textarea" v-model="message" placeholder="Your message..." rows="3"
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

        </div>

    </footer>
</template>



<script>
export default {
    name: 'FooterSection',
    data() {
        return {
            name: '',
            email: '',
            message: ''
        }
    },
    methods: {
        onSubmit(event) {
            // The code responsible to send the email goes here
        }
    }
}
</script>



<style lang="scss">
.color-box-gray {
    background-color: $shuttle-gray;
}

.custom-width {
    width: 500px;
}

.form-container {
    padding-top: 10px;

    @include tablet {
        width: 70%;
    }
}
</style>