<template>
    <section class=" container videoWidth d-flex justify-content-center">
        <div class="  embed-responsive embed-responsive-21by9">
            <iframe allow="fullscreen" controls autoplay="false" class="embed-responsive-item"
                src="video/We Are All Hockey_1.webm"></iframe>

        </div>

    </section>
</template>

<script>
export default {
    name: 'VideoSection'
}
</script>

<style lang="scss">
iframe {
    width: 100%;
}






.videoWidth {
    display: flex;
}
</style>