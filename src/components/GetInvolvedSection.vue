<template>
    <section class="container mt-5 ">
        <h2 class="hidden">Get Involved Section</h2>
        <h3 class=" font-family mb-4 font-weight-bold display-5 text-uppercase highlight-eminence text-right">Get
            Involved</h3>
        <div class="row">
            <div class="col-md-4 no-padding">
                <router-link :to="{ name: 'interview', params: { id: 1 } }">
                    <b-img src="https://via.placeholder.com/630x400" fluid alt=" Image"></b-img>
                </router-link>
            </div>
            <div class="col-md-4 no-padding">
                <b-img src="https://via.placeholder.com/630x400" fluid alt=" Image"></b-img>
            </div>
            <div class="col-md-4 no-padding">
                <b-img src="https://via.placeholder.com/630x400" fluid alt=" Image"></b-img>
            </div>
        </div>
        <div class="row text-center box">
            <div class="col text-center align-self-center color-box-eminence my-auto">


                <p class="font-family-secondary h5 color-westar">It's time for hockey to change<br><span
                        class="highlight-flame-pea font-weight-bold">#NoMoreSilence</span> <br>
                    The only way the game will grow <br>is to
                    stop bullying and start to <br>make our life better together.</p>

            </div>

            <div class="col text-center align-self-center ">
                <b-button disabled size="lg" variant="info">SHARE YOUR EXPERIENCE</b-button>
                <p class="highlight-eminence h3 font-weight-bold mt-2 ">#WeAreAllHockey</p>
            </div>
        </div>
    </section>

</template>


<script>
export default {
    name: 'GetInvolvedSection'
}
</script>

<style lang="scss">
.box {
    height: 400px;

}

.color-box-eminence {
    height: 400px;
    background-color: $eminence;
}

.font-family-seconday {
    font-size: $secondary-font;
}

.color-westar {
    color: $westar;
}
</style>

