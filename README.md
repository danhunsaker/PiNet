# PiNet

| A Network For The People, By The People |
|:---------------------------------------:|
|         Powered By Raspberry Pi         |
|              Built By You               |

[![Creative Commons BY-NC-SA 4.0](https://i.creativecommons.org/l/by-nc-sa/4.0/88x31.png)](http://creativecommons.org/licenses/by-nc-sa/4.0/)

We envision a world where public networks can be found in public areas of every
major city, and where those networks are run entirely without any corporate
interference or oversight. We envision a world where city-local networks connect
to each other across the distances between them, using nodes that not only relay
the network from city to city, but allow access from areas all along their path.
We envision a world where it is possible to be connected safely and securely
from anywhere you please, where the _people_ are in control of their own means
of accessing each other, and the vast treasures of information we each have to
share. We envision a world where people are _people_, not numbers in a formula
or sources of hard-earned money to be exploited, and where their ability to
connect and interact with each other isn't limited by economic circumstance.

**PiNet** isn't a product. It's not a technology. It's a collection of
inexpensive hardware, open software, and steps for combining them in a way that
allows us, the _people_, to provide our own interconnectivity. There will be
setups for a number of different types of PiNet node — some will simply serve as
access nodes, letting users connect, and relaying their requests to other nodes;
some will serve as uplink nodes, connecting both to the local PiNet and the
public Internet; others will be relay nodes, which are similar to access nodes
except they are designed to connect PiNets across the large distances between
cities; still others will serve other purposes still, such as running services
directly on PiNet nodes themselves. And so on, with combinations and new
configurations being added as they are contributed by other users — other
_people_ — like you.

This project contains files, many of them exploratory, related to a popular
(that is, "for the people, by the people") computer network which operates
similarly to the Internet — connecting individuals together beyond their own
homes and offices. Rather than being owned by the corporations that currently
have a stranglehold on access today, each PiNet node is built, owned, and
maintained by a regular person. Each node automatically connects to other nearby
nodes as soon as it is switched on, creating a network between them with no
extra effort.

Each node also operates as a
[Tor relay](https://trac.torproject.org/projects/tor/wiki/doc/TorALaymansGuide),
allowing anyone connected to the local PiNet to browse privately. If any nodes
in the local PiNet are connected to the Internet as well, that entire PiNet gets
the benefit of that access — though to avoid overage fees, usage will be limited
at the Internet-connected node, so the more nodes there are connected to the
public Internet, the faster it will be for everyone.
