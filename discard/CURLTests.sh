#!/bin/bash

WEBHOOK="https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq"

DATA=



                        ### Failure 

curl -X POST -H 'Content-type: application/json' \
              --data " \
                        { \
                            \"tts\": false, \
                            \"embeds\": [{ \
                                \"title\": \"My Project - Build Falure\", \
                                \"color\": \"14177041\", \
                                \"url\": \"https://circleci.com/workflow-run/39e687c5-fc10-41ec-8b6b-bda7bef1e1f3\", \
                                \"fields\": [ { \
                                    \"name\": \"Project\", \
                                    \"value\": \"DiscordOrb\", \
                                    \"inline\": true \
                                }, \
                                { \
                                    \"name\": \"Build Number\", \
                                    \"value\": \"200\", \
                                    \"inline\": true  \
                                } ] \
                            }] \
                        }" https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq


                        ### Success

curl -X POST -H 'Content-type: application/json' \
              --data " \
                        { \
                            \"tts\": false, \
                            \"embeds\": [{ \
                                \"title\": \"My Project - Build Succeeded\", \
                                \"color\": \"655104\", \
                                \"url\": \"https://circleci.com/workflow-run/39e687c5-fc10-41ec-8b6b-bda7bef1e1f3\", \
                                \"fields\": [ { \
                                    \"name\": \"Project\", \
                                    \"value\": \"DiscordOrb\", \
                                    \"inline\": true \
                                }, \
                                { \
                                    \"name\": \"Build Number\", \
                                    \"value\": \"200\", \
                                    \"inline\": true  \
                                } ] \
                            }] \
                        }" https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq


                        ### Approval 

curl -X POST -H 'Content-type: application/json' \
              --data " \
                        { \
                            \"tts\": false, \
                            \"embeds\": [{ \
                                \"title\": \"My Project - Build Awaiting Approval\", \
                                \"color\": \"23039\", \
                                \"url\": \"https://circleci.com/workflow-run/39e687c5-fc10-41ec-8b6b-bda7bef1e1f3\", \
                                \"fields\": [ { \
                                    \"name\": \"Project\", \
                                    \"value\": \"DiscordOrb\", \
                                    \"inline\": true \
                                }, \
                                { \
                                    \"name\": \"Build Number\", \
                                    \"value\": \"200\", \
                                    \"inline\": true  \
                                } ] \
                            }] \
                        }" https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq

curl -X POST -H 'Content-type: application/json' \
              --data " \
                        { \
                            \"tts\": false, \
                            \"embeds\": [{ \
                                \"title\": \"My Project - Build Failed\", \
                                \"description\": \"this is embedded <5972>\", \
                                \"color\": \"14177041\" \
                            }] \
                        }" https://discordapp.com/api/webhooks/580466780237987870/sL59nGMtzf9goEhrq9C8CWTKbrXM7TawvnCuG_JrpdV823AnbotSdCnEbX8cgPyqipcq