curl https://raw.githubusercontent.com/fluent/fluent-bit/master/install.sh | sh
systemctl enable --now fluent-bit
ln -s /opt/fluent-bit/bin/fluent-bit /usr/local/bin/fluent-bit
cat /etc/fluent-bit/fluent-bit.conf | egrep -v '^$|#'
fluent-bit -c /etc/fluent-bit/fluent-bit.conf --dry-run

