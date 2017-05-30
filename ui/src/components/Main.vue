<template>
  <section class="hero is-fullheight">
  <!-- Hero header: will stick at the top -->
  <div class="hero-head">
    <header class="nav">
      <div class="container">
        <div class="nav-left">
          <a class="nav-item">
            Instanalizer
          </a>
        </div>
        <span class="nav-toggle">
          <span></span>
          <span></span>
          <span></span>
        </span>
        <div class="nav-right nav-menu">
          <a class="nav-item is-active">
            Home
          </a>
          <a class="nav-item">
            About
          </a>
          <span class="nav-item">
            <a class="button is-inverted">
              <span class="icon">
                <i class="fa fa-github"></i>
              </span>
              <span>github</span>
            </a>
          </span>
        </div>
      </div>
    </header>
  </div>

  <!-- Hero content: will be in the middle -->
  <div class="hero-body">
    <div class="container has-text-centered">
      <h1 class="title">
        {{msg}}
      </h1>
    </div>
  </div>
</section>
</template>

<script>
export default {
  name: 'main',
  data() {
    return {
      msg: 'Instanalizer',
    };
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
</style>
