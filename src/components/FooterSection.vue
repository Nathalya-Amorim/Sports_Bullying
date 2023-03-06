<template>
    <footer class="container">
        <div class="row">
            <div class="info col-12">
                <span class="section-title">Info</span>
                <nav>
                    <a href="/html/">About Us</a>
                    <a href="/html/">Interviews</a>
                    <a href="/html/">Contact Us</a>
                </nav>
            </div>
            <div class="partner col-12 col-md-4">
                <span class="section-title row">Partner</span>
                <img class="whl-logo" src="/images/WHL-Logo.png" alt="">
                <a class="visit-whl" href="https://womenshockeylife.com/" target="_blank">Visit WHL Site</a>
            </div>
            <div class="campaign col-12 col-md-4">
                <span class="section-title row">Campaign Guided By</span>
                <img class="fanshawe-logo" src="/images/logo_fanshawe.png" alt="">
            </div>
            <div class="follow-us col-12 col-md-4">
                <span class="section-title row">Follow us</span>
                <div class="row">
                    <div class="col-6 col-md-12">
                        <a href="https://www.instagram.com/nathalyamorim87/" target="_blank" rel="noopener noreferrer">
                            <span class="social">
                                <i class="fa-brands fa-instagram"></i>
                            </span>
                        </a>
                        <a href="https://www.linkedin.com/in/nathalya-menezes-0b1a37130/" target="_blank"
                            rel="noopener noreferrer">
                            <span class="social">
                                <i class="fa-brands fa-linkedin-in"></i>
                            </span>
                        </a>

                        <a href="https://github.com/Nathalya-Amorim" target="_blank" rel="noopener noreferrer">
                            <span class="social">
                                <i class="fa-brands fa-github"></i>
                            </span>
                        </a>
                    </div>
                    <div class="col-6 col-md-12">
                        <span class="row hash-gray">#NoMoreBullying</span>
                        <span class="row highlight-eminence">#WeAreAllHockey</span>
                    </div>
                </div>
            </div>
            <hr>
            <div>
                <span>Fanshawe College | Winter 2023</span>
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
    }
}
</style>