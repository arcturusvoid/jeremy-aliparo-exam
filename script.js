document.addEventListener('DOMContentLoaded', function () {
    new Vue({
        el: '#app',
        data: {
            channels: [],
            videos: []
        },
        mounted() {
            this.fetchData();
        },
        methods: {
            fetchData() {
                const channelsEndpoint = 'youtube_channel_json.php?type=0';
                const videosEndpoint = 'youtube_channel_json.php?type=1';

                // Fetch channels data
                fetch(channelsEndpoint)
                    .then(response => response.json())
                    .then(data => {
                        this.channels = data;
                    })
                    .catch(error => console.error(error));

                // Fetch videos data
                fetch(videosEndpoint)
                    .then(response => response.json())
                    .then(data => {
                        this.videos = data;
                        console.log(this.videos);
                    })
                    .catch(error => console.error(error));
            },
            formatDate(dateString) {
                const date = new Date(dateString);
                const day = date.getDate();
                const month = date.toLocaleString("default", { month: "long" });
                const year = date.getFullYear();
          
                return `${day} ${month} ${year}`;
              }
        }
    });
});

