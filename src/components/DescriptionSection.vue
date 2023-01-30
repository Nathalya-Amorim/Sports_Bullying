<template>
    <section class="container mt-5">
        <h2 class="hidden"> Description of the Campaign</h2>
        <h2 class=" font-weight-bold display-5  highlight-eminence text-uppercase font-family">a major penalty for
            bullying</h2>
        <div class="row mt-5">
            <div class="col col-lg-2 body-color">
                <p class="text-justify ">Hockey is a beloved sport that brings people together from all
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
            <div class="col">
                <b-img src="https://via.placeholder.com/1100x400" fluid alt=" Image"></b-img>
            </div>

        </div>
        <div class="mt-4 ">
            <h2 class=" committed-class font-weight-bold body-color text-uppercase display-6">we are all committed to
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
</style>