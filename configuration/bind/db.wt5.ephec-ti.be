;
;BIND File
;

$TTL 1d
$ORIGIN wt5.ephec-ti.be.
@       1D      IN      SOA     ns1.wt5.ephec-ti.be root.wt5.ephec-ti.be (
                                1       ; serial
                                3H      ; refresh
                                15      ; retry
                                1w      ; expire
                                3h)     ;

;NS RECORDS
        IN      NS      ns1.wt5.ephec-ti.be.
        IN      NS      ns2.wt5.ephec-ti.be.
        IN      NS      ns3.wt5.ephec-ti.be.
        IN      MX      10      mail.wt5.ephec-ti.be.

;A Records
ns1     IN      A       151.80.119.132
ns2     IN      A       151.80.119.140
ns3     IN      A       151.80.119.162


;Configuration pour tout ce qui est web

web             IN      A       151.80.119.132 ;VPS de greg
service         IN      A       151.80.119.140 ;VPS de noe
owncloud.wt5.ephec-ti.be.       IN      A       151.80.119.162 ;VPS de gerault

www             IN      CNAME   web
b2b             IN      CNAME   web
intranet        IN      CNAME   web
postfixadmin    IN      CNAME   service
webmail         IN      CNAME   service

;Serveur sip
sip.wt5.ephec-ti.be.     IN      A       151.80.119.162

;Serveur mail
mail            IN      A       151.80.119.140
mail._domainkey IN      TXT     ( "v=DKIM1; k=rsa; "
          "p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEApxd05MX8e+SEWmJAs/PFeC7LdSgWgDUkYdKq/6L+NkVnHkUuZH5GJeqR4Tzrfl5eo388Iz4S9bxdHGBKPW+dnxDVRAApTKke18Duq8j3iJDFjgvIcR1wdqncsxNRoi+Fpq8M$
          "/QLY1I2eQQXAH7ASu6hpFXFhAlqBGzXnEYTNMKaDdZzZWQ055LaJNJOf0dov7jMFKtYNBj47zc16++cF0E2MWk/ssGveiRee2LBCFIE/ETu2jVciK2CZWCA5JXtP4Jh3uWdPkK4wIDAQAB" )  ; ----- DKIM key mail for wt5.e$





