<template>
    <footer class="">
        <div class="container">
            <div class="row">
                <div class="info col-12">
                    <span class="section-title">INFO</span>
                    <nav>
                        <a href="/">Home</a>
                        <a href="/about/">About Us</a>
                        <a href="/interview/1">Interviews</a>
                        <a href="/contact/">Contact Us</a>
                    </nav>
                </div>
                <div class="partner col-12 col-md-4">
                    <div class="row">
                        <div class="col-6">
                            <span class="section-title row">PARTNER</span>
                            <img class="whl-logo" src="/images/WHL-Logo.png" alt="">
                        </div>
                        <div class="col-6 m-auto">
                            <p class="whl-call">Are you a female hockey player looking for more resources and support?</p>
                            <a class="visit-whl" href="https://womenshockeylife.com/" target="_blank">Visit WHL Site</a>
                        </div>
                    </div>


                </div>
                <div class="campaign col-12 col-md-4">
                    <span class="section-title row"> CAMPAIGN GUIDED BY </span>
                    <img class="fanshawe-logo" src="/images/logo_fanshawe.png" alt="">
                </div>
                <div class="follow-us col-12 col-md-4 d-flex flex-column">
                    <span class="section-title row align-self-end">FOLLOW US</span>
                    <div class="row">
                        <div class="col-6 col-md-12 d-flex flex-row-reverse no-padding">
                            <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
                                <span class="social">
                                    <i class="fa-brands fa-instagram"></i>
                                </span>
                            </a>
                            <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer">
                                <span class="social">
                                    <i class="fa-brands fa-facebook"></i>
                                </span>
                            </a>

                            <a href="https://twitter.com/" target="_blank" rel="noopener noreferrer">
                                <span class="social">
                                    <i class="fa-brands fa-github"></i>
                                </span>
                            </a>
                        </div>
                        <div class="col-6 col-md-12 d-flex flex-column">
                            <span class="row hash-gray align-self-end">#NoMoreBullying</span>
                            <span class="row hash-eminence highlight-eminence align-self-end">#WeAreAllHockey</span>
                        </div>
                    </div>
                </div>
                <hr>
                <div>
                    <span>Fanshawe College | Winter 2023</span>
                </div>
                <div>
                    <span>Copyright © 2023 All Rights Reserved </span>
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
footer {
    background-color: #DEDEDE;
    padding: 20px;

    a {
        text-decoration: none;
        color: #4D4D4D;
        margin: 10px;
        font-family: $secondary-font;

    }

    .info {
        margin-bottom: 20px;

    }

    .partner {
        margin-bottom: 20px;


        .whl-logo {
            height: 75px;
        }

        .visit-whl {
            background-color: $eminence;
            color: $westar;
            padding: 15px;
            text-transform: uppercase;
            text-decoration: none;
            font-family: $secondary-font;
        }

        p {
            font-family: $secondary-font;
            font-size: .8em;
        }
    }

    .campaign {
        margin-bottom: 20px;

        .fanshawe-logo {
            width: 200px;
        }
    }

    .follow-us {
        margin-bottom: 20px;

        .hash-gray {
            color: #4D4D4D;
        }

        .hash-purple {
            color: $eminence;
            font-weight: bold;
        }

    }

    .section-title {
        margin: 10px;
        color: #4D4D4D;
        font-weight: bold;

        &.row.align-self-end {
            margin: 0;
        }
    }

    .whl-call {
        display: none;


        @include tablet {
            display: block;
        }
    }
}

span {
    font-family: $secondary-font;
}




a {
    &:hover {
        text-decoration: none !important;
        color: $eminence !important;
        font-weight: bold !important;
    }
}
</style>