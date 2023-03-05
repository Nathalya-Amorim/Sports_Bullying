<template>
    <section class="container mt-5">
        <h2 class="hidden"> Description of the Campaign</h2>
        <h2 class=" d-flex justify-content-center  display-4  highlight-eminence text-uppercase font-family">
            a major penalty for
            bullying</h2>
        <div class="row mt-5">
            <div class="col col-md-6 col-lg-3 body-color">
                <p class="text-justify getText display-5">Hockey is a beloved sport that brings people together from all
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
            <div class="col-md-6 col-lg-9 girlsLook">
                <b-img src="/images/girls-team-730x400.jpg" fluid alt="Hockey Girls Looking at each other"></b-img>
            </div>

        </div>
        <div class="mt-4 d-flex justify-content-end">
            <h2 class="  committed-class font-weight-bold body-color text-uppercase display-6">we are all committed to
                promoting a <span class=" font-weight-bold highlight-flame-pea">culture<br></span> of
                <span class=" font-weight-bold highlight-eastern-blue">respect </span> and
                <span class=" font-weight-bold highlight-punch">inclusion</span> in hockey.
            </h2>
        </div>
    </section>
</template>

<script>
export default {
    name: 'DescriptionSection'
}
</script>

<style lang="scss">
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
    justify-content: flex-end;
}

.getText {
    font-size: 20px;
}
</style>