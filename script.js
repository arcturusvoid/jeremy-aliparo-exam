document.addEventListener('DOMContentLoaded', function () {
    new Vue({
        el: '#app',
        data: {
            channels: [],
            videos: [],
            currentPage: 1,
            totalPages: 1,
        },
        mounted() {
            this.fetchData();
        },
        methods: {
            fetchData() {
                const fetchURL = 'youtube_channel_json.php?page=' + this.currentPage;
                
                // Fetch channels data
                fetch(fetchURL)
                    .then(response => response.json())
                    .then(data => {
                        this.channels = data.channel;
                        this.videos = data.videos;
                        this.totalPages = data.totalPages;
                    })
                    .catch(error => console.error(error));
            },
            nextPage() {
                if (this.currentPage < this.totalPages) {
                    this.currentPage++;
                    this.fetchData();
                }
            },
            prevPage() {
                if (this.currentPage > 1) {
                    this.currentPage--;
                    this.fetchData();
                }
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

