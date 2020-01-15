#!/bin/bash
### BEGIN INIT INFO
# Provides:          toryptables
# Required-Start:    $local_fs $network
# Required-Stop:     $local_fs $remote_fs
# Default-Start:     
# Default-Stop:       
# Short-Description: Transparent proxy
# Description:       Transparent proxy for routing all traffic over Tor
### END INIT INFO

#===============================================================================
#
#          FILE:  toriptables.sh
#
#         USAGE:  ./toriptables.sh
#
#   DESCRIPTION:  Routing Traffic over Tor for anonymizer pentesting
#     Copyright (C) 2016 Teeknofil
#       OPTIONS:  ---
#  REQUIREMENTS:  ---
#          BUGS:  ---
#         NOTES:  Contact teeknofil for bug.
#        AUTHOR:  Teeknofil
#       COMPANY:  Anonymous freelance.
#       VERSION:  1.0
#       CREATED:  18/07/2016 05:42:31 CEST
#      REVISION:  ---
#===============================================================================

###########################
## debugging
###########################

#set -x

 
echo "OK: Loading Toriptables firewall..."
[ -n "$iptables_cmd" ] || iptables_cmd="iptables --wait"
[ -n "$ip6tables_cmd" ] || ip6tables_cmd="ip6tables --wait"


###########################
## error_handler
###########################

set -o pipefail

error_handler() {
  echo "##################################################"
  echo "Toriptables firewall script failed!"
  echo "##################################################"
  exit 1
}

trap "error_handler" ERR

###########################
## NON_TOR
###########################

### set variables
#destinations you don't want routed through Tor
NON_TOR="\
         127.0.0.0-127.255.2550.254 \
         192.168.0.0-192.168.255.254 \
         192.168.1.0-192.168.1.254 \
         10.0.0.0-10.255.255.254 
         "

         
###########################
## USERS
###########################

#the UID that Tor runs as (varies from system to system)
[ -n "$TOR_USER" ] || TOR_USER="$(id -u debian-tor)"
NO_NAT_USERS+="$TOR_USER"

################
## VPN related #
################

[ -n "$VPN_INTERFACE" ] || VPN_INTERFACE="tun0"

## Destinations you do not routed through VPN, only on tor.
      ## 10.0.2.2/24: VirtualBox DHCP
      LOCAL_NET="\
         127.0.0.0-127.0.0.24 \
         192.168.0.0-192.168.0.24 \
         192.168.1.0-192.168.1.24 \
         10.152.152.0-10.152.152.24 \
         10.0.2.2-10.0.2.24 \
      "
 


###########################
## ports
###########################

## The following ports are used
##
## The following applications will be separated, preventing identity
## correlation through circuit sharing.

## Transparent Proxy Ports
[ -n "$TRANS_PORT" ] || TRANS_PORT="9040"
[ -n "$DNS_PORT" ] || DNS_PORT="5300"

## Control Port Filter Proxy Port
[ -n "$CONTROL_PORT_FILTER_PROXY_PORT" ] || CONTROL_PORT_FILTER_PROXY_PORT="9052"

## Flash Proxy Port
[ -n "$FLASHPROXY_PORT" ] || FLASHPROXY_PORT="9000"

## Socks Ports for per application circuits.
[ -n "$SOCKS_PORT_TOR_DEFAULT" ] || SOCKS_PORT_TOR_DEFAULT="9050"
[ -n "$SOCKS_PORT_TOR_HTTP" ] || SOCKS_PORT_TOR_HTTP="9080"
[ -n "$SOCKS_PORT_TOR_HTTPS" ] || SOCKS_PORT_TOR_HTTPS="9043"
[ -n "$SOCKS_PORT_TOR_FTP" ] || SOCKS_PORT_TOR_FTP="9021"
[ -n "$SOCKS_PORT_TB" ] || SOCKS_PORT_TB="9100"
[ -n "$SOCKS_PORT_IRC" ] || SOCKS_PORT_IRC="9101"
[ -n "$SOCKS_PORT_TORBIRDY" ] || SOCKS_PORT_TORBIRDY="9102"
[ -n "$SOCKS_PORT_IM" ] || SOCKS_PORT_IM="9103"
[ -n "$SOCKS_PORT_APT_GET" ] || SOCKS_PORT_APT_GET="9104"
[ -n "$SOCKS_PORT_GPG" ] || SOCKS_PORT_GPG="9105"
[ -n "$SOCKS_PORT_SSH" ] || SOCKS_PORT_SSH="9106"
[ -n "$SOCKS_PORT_GIT" ] || SOCKS_PORT_GIT="9107"
[ -n "$SOCKS_PORT_SDWDATE" ] || SOCKS_PORT_SDWDATE="9108"
[ -n "$SOCKS_PORT_WGET" ] || SOCKS_PORT_WGET="9109"
[ -n "$SOCKS_PORT_METASPLOIT" ] || SOCKS_PORT_METASPLOIT="9110"
[ -n "$SOCKS_PORT_BITCOIN" ] || SOCKS_PORT_BITCOIN="9111"
[ -n "$SOCKS_PORT_PRIVOXY" ] || SOCKS_PORT_PRIVOXY="9112"
[ -n "$SOCKS_PORT_POLIPO" ] || SOCKS_PORT_POLIPO="9113"
[ -n "$SOCKS_PORT_TBB_DOWNLOAD" ] || SOCKS_PORT_TBB_DOWNLOAD="9115"
[ -n "$SOCKS_PORT_TBB_GPG" ] || SOCKS_PORT_TBB_GPG="9116"
[ -n "$SOCKS_PORT_CURL" ] || SOCKS_PORT_CURL="9117"
[ -n "$SOCKS_PORT_RSS" ] || SOCKS_PORT_RSS="9118"
[ -n "$SOCKS_PORT_TORCHAT" ] || SOCKS_PORT_TORCHAT="9119"
[ -n "$SOCKS_PORT_MIXMASTERUPDATE" ] || SOCKS_PORT_MIXMASTERUPDATE="9120"
[ -n "$SOCKS_PORT_MIXMASTER" ] || SOCKS_PORT_MIXMASTER="9121"
[ -n "$SOCKS_PORT_KDE" ] || SOCKS_PORT_KDE="9122"
[ -n "$SOCKS_PORT_GNOME" ] || SOCKS_PORT_GNOME="9123"
[ -n "$SOCKS_PORT_APTITUDE" ] || SOCKS_PORT_APTITUDE="9124"
[ -n "$SOCKS_PORT_YUM" ] || SOCKS_PORT_YUM="9125"
[ -n "$SOCKS_PORT_TBB_DEFAULT" ] || SOCKS_PORT_TBB_DEFAULT="9150"

###########################
## PREPARATION
###########################

socks_ports_list="$(compgen -v | grep SOCKS\_PORT\_)"


###########################
## IPv4 DEFAULTS
###########################

## Set secure defaults.
$iptables_cmd -P INPUT DROP

## FORWARD rules does not actually do anything if forwarding is disabled. Better be safe just in case.
$iptables_cmd -P FORWARD DROP

## Only the Tor process is allowed to establish outgoing connections.
$iptables_cmd -P OUTPUT DROP


###########################
## interfaces
###########################

# your internal interface
[ -n "$EXT_IF" ] || EXT_IF="eth0"


###########################
## IPv4 PREPARATIONS
###########################

## Flush old rules.
$iptables_cmd -F
$iptables_cmd -X
$iptables_cmd -t nat -F
$iptables_cmd -t nat -X
$iptables_cmd -t mangle -F
$iptables_cmd -t mangle -X


######################################
## IPv4 DROP INVALID INCOMING PACKAGES
######################################

## DROP INVALID
#$iptables_cmd -A INPUT -m conntrack --ctstate INVALID -j DROP
#$iptables_cmd -A INPUT -m state --state INVALID -j DROP

## DROP INVALID SYN PACKETS
#$iptables_cmd -A INPUT -p tcp --tcp-flags ALL ACK,RST,SYN,FIN -j DROP
#$iptables_cmd -A INPUT -p tcp --tcp-flags SYN,FIN SYN,FIN -j DROP
#$iptables_cmd -A INPUT -p tcp --tcp-flags SYN,RST SYN,RST -j DROP

## DROP PACKETS WITH INCOMING FRAGMENTS. THIS ATTACK ONCE RESULTED IN KERNEL PANICS
#$iptables_cmd -A INPUT -f -j DROP

## DROP INCOMING MALFORMED XMAS PACKETS
#$iptables_cmd -A INPUT -p tcp --tcp-flags ALL ALL -j DROP

## DROP INCOMING MALFORMED NULL PACKETS
#$iptables_cmd -A INPUT -p tcp --tcp-flags ALL NONE -j DROP

###########################
## IPv4 INPUT
###########################

## Traffic on the loopback interface is accepted.
$iptables_cmd -A INPUT -i lo -j ACCEPT

## Established incoming connections are accepted.
#$iptables_cmd -A INPUT -m state --state ESTABLISHED -j ACCEPT

$iptables_cmd -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT


## Allow all incoming connections on the virtual VPN network interface,
$iptables_cmd -A INPUT -i "$VPN_INTERFACE" -j ACCEPT

for ext_if_item in $EXT_IF; do
   ## Allow incoming SSH connections on the external interface.
   #  $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --dport 22 -j ACCEPT
   
   ## Allow incoming Flash Proxy connections on the external interface.
   ## This has NOTHING to do with Adobe Flash.
      $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --dport "$FLASHPROXY_PORT" -j ACCEPT
   
   ## Allow incoming DIRPORT connections for an optional Tor relay.   
   #   $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --dport "$DIR_PORT" -j ACCEPT   

   ## Allow incoming ORPORT connections for an optional Tor relay.   
   #   $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --dport "$OR_PORT" -j ACCEPT
   

   ## Custom Open Ports on external interface
   ## - untested, should work
   ## - Replace 22,9050,9051,9150,9151 with any ports you like to be open, example: 9050,9051
   ##   or just 9050
   ## - $iptables_cmd v1.4.14: multiport needs -p tcp, -p udp, -p udplite, -p sctp or -p dccp
   $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --match multiport --dports 22,9050,9051,9150,9151 -j ACCEPT
   $iptables_cmd -A INPUT -i "$ext_if_item" -p udp --match multiport --dports 22,9050,9051,9150,9151 -j ACCEPT

   ## OPTIONAL Allow incoming OpenVPN connections on the external interface.
   $iptables_cmd -A INPUT -i "$ext_if_item" -p tcp --dport 1194 -j ACCEPT
done


# Allow incoming 9050,9051,9001
iptables -A INPUT -p tcp --match multiport --dport 9050,9051,9001 --tcp-flags FIN,SYN,RST,ACK SYN -m state --state NEW,ESTABLISHED -j ACCEPT

# Allow outgoing 9050,9051,9001
iptables -A INPUT -p tcp --match multiport --sport 9050,9051,9001 --tcp-flags FIN,SYN,RST,ACK SYN -m state --state ESTABLISHED -j ACCEPT

## Reject anything not explicitly allowed above.
## Drop is better than reject here, because we do not want to reveal it's a Linux.
$iptables_cmd -A INPUT -j DROP

###########################
## IPv4 OUTPUT
###########################

## Allow outgoing traffic on VPN interface,
$iptables_cmd -A OUTPUT -o "$VPN_INTERFACE" -j ACCEPT

$iptables_cmd  -t nat -A OUTPUT -m owner --uid-owner "$TOR_USER" -j RETURN
 
## Redirect  all  other pre-routing and output to DNS_PORT Tor
$iptables_cmd -t nat -A OUTPUT -p udp --dport 53 -j REDIRECT --to-ports "$DNS_PORT"
$iptables_cmd -t nat -A PREROUTING -i $EXT_IF -p udp --dport 53 -j REDIRECT --to-ports "$DNS_PORT"


# Allow outgoing 9050
iptables -A OUTPUT -p tcp --match multiport --sport 9050,9051,9001 --tcp-flags FIN,SYN,RST,ACK SYN -m state --state NEW,ESTABLISHED -j ACCEPT
iptables -A OUTPUT -p tcp --match multiport --sport 9050,9051,9001 --tcp-flags FIN,SYN,RST,ACK SYN -m state --state ESTABLISHED -j ACCEPT

# Accept outgoing traffic to the local Tor TransPort.
$iptables_cmd -A OUTPUT -d 127.0.0.1/32 -p tcp -m tcp --dport 9040 --tcp-flags FIN,SYN,RST,ACK SYN -j ACCEPT


## Exclude connections to local network from being redirected through Tor,

for NET in $NON_TOR; do
    $iptables_cmd -t nat -A OUTPUT -m iprange --dst-range "$NET" -j RETURN
done


## Redirect all TCP traffic to TRANS_PORT
$iptables_cmd -t nat -A OUTPUT -p tcp --syn -j REDIRECT --to-ports "$TRANS_PORT"
$iptables_cmd -t nat -A PREROUTING -i $EXT_IF -p tcp --syn -j REDIRECT --to-ports "$TRANS_PORT"


## Accept outgoing connections to local network
for NET in $NON_TOR_; do
     $iptables_cmd -A OUTPUT -m iprange --dst-range "$NET" -j ACCEPT
done

## Accept outgoing connections to local network,
   for NET in $LOCAL_NET; do
      $iptables_cmd -A OUTPUT -m iprange --dst-range "$NET" -j ACCEPT
   done

iptables -A OUTPUT -m owner --uid-owner "$TOR_USER" -j ACCEPT



for int_if_item in $EXT_IF; do
   ## Redirect Control Port Filter Proxy to Control Port Filter Proxy port.   
      $iptables_cmd -t nat -A PREROUTING -i "$int_if_item" -p tcp --dport "$CONTROL_PORT_FILTER_PROXY_PORT" -j REDIRECT --to-ports "$CONTROL_PORT_FILTER_PROXY_PORT"   
done

for int_if_item in $EXT_IF; do   
      for socks_port in $socks_ports_list; do         
         ## Redirect Browser/IRC/TorBirdy, etc. to SocksPort.
         $iptables_cmd -t nat -A PREROUTING -i "$int_if_item" -p tcp --dport "${!socks_port}" -j REDIRECT --to-ports "${!socks_port}"
      done

      for port_number_temp in $(seq 9152 9189); do
         ## Redirect ports 9152-9189 prepared for user custom applications.
         $iptables_cmd -t nat -A PREROUTING -i "$int_if_item" -p tcp --dport "$port_number_temp" -j REDIRECT --to-ports "$port_number_temp"
      done
done

## Existing connections are accepted.
$iptables_cmd -A OUTPUT -m state --state ESTABLISHED -j ACCEPT
iptables -A OUTPUT -j DROP


###########################
## IPv6
###########################

## Policy DROP for all traffic as fallback.
$ip6tables_cmd -P INPUT DROP
$ip6tables_cmd -P OUTPUT DROP
$ip6tables_cmd -P FORWARD DROP

## Flush old rules.
$ip6tables_cmd -F
$ip6tables_cmd -X
$ip6tables_cmd -t mangle -F
$ip6tables_cmd -t mangle -X

## Allow unlimited access on loopback.
## Not activated, since we do not need it.
#ip6tables_cmd -A INPUT -i lo -j ACCEPT
#ip6tables_cmd -A OUTPUT -o lo -j ACCEPT

## Drop/reject all other traffic.
$ip6tables_cmd -A INPUT -j DROP
## --reject-with icmp-admin-prohibited not supported by ip6tables
$ip6tables_cmd -A OUTPUT -j REJECT
## --reject-with icmp-admin-prohibited not supported by ip6tables
$ip6tables_cmd -A FORWARD -j REJECT

###########################
## End
###########################

echo " OK: The firewall should not show any messages,"
echo " OK: besides output beginning with prefix OK:..."
echo " OK: Toriptables firewall loaded."

exit 0[code]

