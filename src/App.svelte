<script lang="ts">
import Login from "./lib/Login.svelte";
import Messages from "./lib/Messages.svelte";
  import { currentUser } from "./lib/pocketbase";

  let responseData = '';

  fetch('http://127.0.0.1:8888')
  .then(response => response.text())
  .then(data => {
    responseData = data;
  });

</script>

<h1>Chatmonium</h1>
<h2>{responseData}</h2>


<Login />
{#if $currentUser}

  <Messages />
  
{/if}
