<template>
    <footer class="">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-9 p-0">
                    <div class="info col-12 p-0">
                        <span class="section-title">INFO</span>
                        <nav>
                            <a href="/">Home</a>
                            <a href="/about/">About Us</a>
                            <a href="/interview/1">Interviews</a>
                            <a href="/contact/">Contact Us</a>
                        </nav>
                    </div>
                    <div class="row">
                        <div class="partner col-12 col-md-6">
                            <div class="row">
                                <div class="col-6">
                                    <span class="section-title row">PARTNER</span>
                                    <img class="whl-logo" src="/images/WHL-Logo.png" alt="">
                                </div>
                                <div class="col-6 m-auto">
                                    <p class="whl-call">Are you a female hockey player looking for more resources and
                                        support?
                                    </p>
                                    <a class="visit-whl" href="https://womenshockeylife.com/" target="_blank">Visit WHL
                                        Site</a>
                                </div>
                            </div>
                        </div>
                        <div class="campaign col-12 col-md-6">
                            <div class="d-flex flex-column m-auto">
                                <span class="section-title row"> CAMPAIGN GUIDED BY </span>
                                <img class="fanshawe-logo" src="/images/logo_fanshawe.png" alt="">
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-12 col-md-3">
                    <div class="follow-us col-12 col-md-12 d-flex flex-column p-0">
                        <span class="section-title row align-self-end">FOLLOW US</span>
                        <div class="row">
                            <div class="col-6 col-md-12 d-flex flex-row-reverse no-padding social-links">
                                <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
                                    <span class="social">
                                        <i class="fa-brands fa-instagram fa-2x"></i>
                                    </span>
                                </a>
                                <a href="https://www.facebook.com/" target="_blank" rel="noopener noreferrer">
                                    <span class="social">
                                        <i class="fa-brands fa-facebook fa-2x"></i>
                                    </span>
                                </a>

                                <a href="https://twitter.com/" target="_blank" rel="noopener noreferrer">
                                    <span class="social">
                                        <i class="fa-brands fa-twitter fa-2x"></i>
                                    </span>
                                </a>
                            </div>
                            <div class="col-6 col-md-12 d-flex flex-column">
                                <span class="hash-gray align-self-end">#NoMoreBullying</span>
                                <span
                                    class="hash-eminence highlight-eminence align-self-end hash-purple">#WeAreAllHockey</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container p-0">
                <div class="row">
                    <div class="col-12 col-md-6">
                        <span>Fanshawe College | Winter 2023</span>
                    </div>
                    <div class="col-12 col-md-6 copyright">
                        <span>Copyright © 2023 All Rights Reserved </span>
                    </div>
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



<style lang="scss" >
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
            color: $white;
            padding: 15px;
            text-transform: uppercase;
            text-decoration: none;
            font-family: $secondary-font;
            width: 100%;
            display: block;
            margin: 0px;
            text-align: center;
            font-weight: bold !important;
        }

        p {
            font-family: $secondary-font;
            font-size: .8em;
        }
    }

    .campaign {
        margin-bottom: 20px;

        @include tablet {
            display: flex;
        }

        .fanshawe-logo {
            width: 200px;
        }
    }

    .follow-us {
        margin-bottom: 20px;

        .hash-gray {
            color: #4D4D4D;
            font-size: 1.5em;

            @include tablet {
                font-size: 2em;
            }
        }

        .hash-purple {
            color: $eminence;
            font-weight: bold;
            font-size: 1.5em;

            @include tablet {
                font-size: 2em;
            }
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

    .social-links {
        flex-direction: row !important;

        @include tablet {
            flex-direction: row-reverse !important;
        }
    }

    .copyright {
        span {
            width: 100%;
            display: block;
            text-align: left;

            @include tablet {
                text-align: right;
            }
        }
    }
}

.section-title.row.align-self-end {
    align-self: flex-start !important;

    @include tablet {
        align-self: flex-end !important;
    }
}

span {
    font-family: $secondary-font;
}

.info,
.social-links {
    a {
        &:hover {
            text-decoration: none !important;
            color: $eminence !important;
            font-weight: bold !important;
        }
    }
}

.visit-whl {
    &:hover {
        text-decoration: none !important;
        color: $white !important;
        font-weight: bold !important;
    }
}
</style>