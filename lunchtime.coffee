# Description
#   Spams "LUNCH!" at 11:05
#
# Dependencies:
#   cron: 
#   time: 
#
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   @zoney
TIMEZONE = "Europe/Oslo"
QUITTING_TIME = '0 10 11 * * 2-6' # M-F 11:05
ROOM = "Ventelo"

cronJob = require('cron').CronJob

module.exports = (robot) ->
        goLunching = new cronJob QUITTING_TIME,
                ->
                        robot.messageRoom ROOM, "11:05, på tide å få seg mat!"
                null
                true
                TIMEZONE