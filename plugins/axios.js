export default function({ $axios }) {
  $axios.onRequest((config) => {
    if (process.env.QIITA_TOKEN) {
      config.headers.common['Authorization'] = "Bearer " + process.env.QIITA_TOKEN
      console.log(config)
    }
    return config
  })
}
