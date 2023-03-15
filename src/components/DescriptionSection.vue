<template>
    <section class="description-section container pt-5">
        <div class="row campaign-container">
            <div class="col-2 col-md-1">
                <b-img class="arrowDescription" src="/images/arrow-purple-vertical.svg" alt="Logo Image"></b-img>
            </div>
            <div class="col-10 col-md-11 no-padding-left">
                <h2 class="hidden"> Description of the Campaign</h2>
                <h3 class=" d-flex justify-content-center  display-4  highlight-eminence text-uppercase font-family">
                    a major penalty for
                    bullying
                </h3>
                <div class="row mt-5">
                    <div class="col-md-6 col-lg-4 body-color">
                        <p class="text-justify getText display-5">Hockey is a beloved sport that brings people together from
                            all
                            walks of life.
                            However, like any
                            sport, it can also be a breeding ground for negative behavior, including bullyig.
                            <br><br>At <span class="highlight-eminence">#WeAreAllHockey</span>, we believe that every
                            player
                            will be
                            able to enjoy
                            the sport without fear
                            of harassment, sexism, or bullying.
                        </p>
                    </div>
                    <div class="col-md-6 col-lg-8 girlsLook">
                        <b-img src="/images/girls-team-730x400.jpg" fluid alt="Hockey Girls Looking at each other"></b-img>
                    </div>
                </div>
                <div class="mt-4 d-flex justify-content-end">
                    <h4 class="  committed-class font-weight-bold body-color text-uppercase display-6">we are all committed
                        to
                        promoting a <span class=" font-weight-bold highlight-flame-pea">culture<br></span> of
                        <span class=" font-weight-bold highlight-eastern-blue">respect </span> and
                        <span class=" font-weight-bold highlight-punch">inclusion</span> in hockey.
                    </h4>
                </div>
            </div>
        </div>


    </section>
</template>

<script>
export default {
    name: 'DescriptionSection'
}
</script>

<style lang="scss">
.description-section {
    background-color: $white;

    h4 {
        font-size: 30px;
    }
}

.font-family {
    font-family: $primary-font;
}

.body-color {
    color: $scarpa-flow;
}

.highlight-flame-pea {
    color: $flame-pea;
}

.committed-class {
    line-height: 40px;
}

.highlight-eastern-blue {
    color: $eastern-blue;
}

.highlight-punch {
    color: $punch;
}

.girlsLook {
    display: flex;
    flex-direction: column;
    margin-bottom: 25px;

    @include tablet {
        margin-bottom: 0px;
    }
}

.getText {
    font-size: 20px;
    font-family: $secondary-font;

}

.row.mt-5 {
    flex-direction: column-reverse;
    margin-bottom: 25px;

    @include tablet {
        flex-direction: unset;
        margin-bottom: 0px;
    }
}

.campaign-container {
    position: relative;
    height: 100%;
}

.arrowDescription {
    height: 100%;
    position: absolute;
}

.no-padding-left {
    padding-left: 0px !important;
}
</style>