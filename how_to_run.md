### Create symlink, relaod, and prepare system autorun
```
sudo ln -s /home/juandrzej/portfolio_site/portfolio_site.service /etc/systemd/system
sudo systemctl daemon-reload
sudo systemctl start portfolio_site
sudo systemctl enable portfolio_site  # For auto-start on boot
sudo systemctl status portfolio_site
```

### Security details
```
chmod 600 /home/juandrzej/portfolio_site/.env
sudo chown juandrzej:juandrzej /home/juandrzej/portfolio_site/.env
```

### Using journald
```
journalctl -u portfolio_site -f  # Follow logs in real-time
journalctl -u portfolio_site --since today  # Today's logs
```
