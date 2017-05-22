# ProjetVPS
## But du projet

WoodyToys est un projet réalisé dans le cadre du cours d'administration système et réseaux II de l'EPHEC ayant pour but de simuler l'infrastructure informatique d'une société, les étudiants sont amenés à déployer différents services tels que des plateformes webs, un service mail complet ou encore un service de VoIP.

L'utilisation de la plateforme Docker est imposée pour le déploiement des différents services. Aucune technologie particulière n'est cependant imposée, les étudiants ayant le choix des technologies et services à mettre en place dans les containers pour obtenir le résultat voulu.

## Entreprise
- Dispose d'un ERP Web en interne (uniquement acessible de l'intérieur).
- L'ERP permet la gestion des stocks, de la production, des commandes,...
- La vente s'effectue en B2B (Revendeurs).
- L'entreprise désire changer son infrastructure veillissante.

## Implémentation
- Chaque service est placé dans son propre container.
- Installation, Configuration, Validation, Debugging.

## Services mis en places:

 * Serveur/Résolveur DNS
 * NGINX WEB,B2B,INTRANET
 * NGINX Reverse Proxy
 * Service mail Postfix (divisé en 5 containers)
 * Server VoIP Asterisk
 * Service WebDAV NextCloud
