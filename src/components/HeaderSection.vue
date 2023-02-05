<template>

    <section>
        <h2 class="hidden">Header Section</h2>
        <div class="hero-container">
            <div class="logo-container">
                <h1 class="hidden">We Are All Hockey</h1>
                <b-img src="../../public/images/logo_we-are-all-hockey-v.svg" fluid alt="Logo Image"></b-img>
            </div>
            <h2 class=" font-weight-bold text-hero display-4">hockey<br>for everyone<br><span
                    class="highlight-eminence">bullying <br>for
                    no
                    one</span></h2>
        </div>
    </section>

</template>

<script>
export default {
    name: 'HeaderSection'
}
</script>

<style lang="scss">
.hero-container {
    position: relative;
    width: 100%;
    height: 750px;
    display: flex;
    align-items: center;
    justify-content: center;
    background-repeat: no-repeat;
    background-image: url(https://via.placeholder.com/1900x760);
}

.hero-image {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.text-hero {
    position: absolute;
    bottom: 20px;
    right: 20px;
    font-family: $primary-font;
    text-transform: uppercase;

}

.logo-container {
    position: absolute;
    top: 20px;

    z-index: 22;
}

.logo-container img {
    width: 120px;
}

.highlight-eminence {
    color: $eminence;
    font-weight: bold;
}




.hidden {
    display: none;
}
</style>