
# User
def test_user_moriha(host):
    user = host.user("moriha")
    assert "moriha" == user.name
    assert 1001 == user.uid
    assert 1001 == user.gid
    assert "moriha" == user.group

# Package
def test_apache_is_installed(host):
    apache = host.package("httpd")
    assert apache.is_installed
    assert apache.version.startswith("2.4.39")

# System
def test_systeminfo(host):
    assert "linux" == host.system_info.type
    assert "amzn" == host.system_info.distribution

# Mountpoint
def test_mountpoint(host):
    assert host.mount_point("/").exists
    assert "/dev/xvda1" == host.mount_point("/").device

# Service
def test_apahce_running_and_enabled(host):
    apache = host.service("httpd")
    assert apache.is_running
    assert apache.is_enabled

# Directory
def test_directory_httpd_exists(host):
    apache = host.file("/var/lib/httpd")
    assert apache.exists
    assert apache.is_directory
    assert '0o700' == oct(apache.mode)
