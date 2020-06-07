#!/bin/bash

MON_INTERFACE=$(ip addr | awk '/state UP/ {print $2}' | sed 's/.$//')

# echo 1 > /proc/sys/net/ipv4/ip_forward

# Script pour vider les règles iptables :
# _______________________________________
#
# On remet la policy par défaut à ACCEPT
#
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT

#
# On remet les polices par défaut pour la table NAT
#
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
iptables -t nat -P OUTPUT ACCEPT

#
# On vide (flush) toutes les règles existantes
#
iptables -F
iptables -t nat -F

#
# Et enfin, on efface toutes les chaines qui ne
# sont pas à defaut dans la table filter et nat

iptables -X
iptables -t nat -X

#
# Ceci est une sécurité pour s'assurer que l'on n'empile pas des règles les unes sur
# les autres. Maintenant qu'on s'en est assuré, on applique le filtrage :
#
# Au départ, on commence par donner la politique de base (policy) :
#

iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP

# On dialogue librement avec son interface de loopback :

iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT

# On accepte les Pings :

iptables -A INPUT -p icmp -j ACCEPT
iptables -A OUTPUT -p icmp -j ACCEPT

# commande magique :

iptables -A INPUT -i $MON_INTERFACE -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -o $MON_INTERFACE -m state --state NEW,ESTABLISHED -j ACCEPT
# Toutes les connexions émises par la machine locale peuvent sortir.
# Toutes leurs RÉPONSES seront acceptées !!

# J'autorise l'accès ssh :

iptables -A INPUT -i $MON_INTERFACE -p tcp --dport 22 -j ACCEPT
iptables -A INPUT -i $MON_INTERFACE -p tcp --dport 80 -j ACCEPT
iptables -A INPUT -i $MON_INTERFACE -p tcp --dport 443 -j ACCEPT

