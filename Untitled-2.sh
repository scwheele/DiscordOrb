#!/bin/bash

WEBHOOK="https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq"

DATA=



curl -X POST -H 'Content-type: application/json' \
              --data " \
                        { \
                            \"content\": \"Hello, world\", \
                            \"tts\": false, \
                            \"embeds\": [{ \
                                \"title\": \"Hello, embed.\", \
                                \"description\": \"this is embedded @Scott#5972\", \
                                \"color\": \"14177041\" \
                            }] \
                        }" https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq