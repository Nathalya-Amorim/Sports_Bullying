<template>
    <section class=" container videoWidth d-flex justify-content-center no-padding">
        <div class="  embed-responsive embed-responsive-21by9">
            <!-- <iframe allow="fullscreen" controls autoplay="false" class="embed-responsive-item"
                src="video/promo-video.webm"></iframe> -->
            <iframe width="560" height="315" src="https://www.youtube.com/embed/IzOWYQ65wRU" title="YouTube video player"
                frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                allowfullscreen></iframe>
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
}</style>