#!/bin/bash
dialog                                           \
   --title 'Pergunta'                            \
   --radiolist 'Quem é o monstro do linux?'  \
   0 0 0                                         \
   iniciante  'Lapa'      off                \
   experiente 'Aragão'  off               \
   guru       'Ricardo' on
