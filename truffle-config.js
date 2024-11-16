module.exports = {
  // See <http://truffleframework.com/docs/advanced/configuration>
  // for more about customizing your Truffle configuration!
  networks: {
    development: {
      url: "http://ganache:8545", // Docker compose service name
      network_id: "*" // Match any network id
    },
    live: {
      url: process.env.LIVE_URL,
      network_id: 1
    },
    develop: {
      port: 7545
    }
  }
};
