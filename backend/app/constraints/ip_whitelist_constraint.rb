# frozen_string_literal: true

class IpWhitelistConstraint
  attr_reader :ips

  def initialize
    @ips = Settings.whitelist.ip.split(',')
  end

  def matches?(request)
    ips.include?(ip(request))
  end

  private

  def ip(request)
    request.respond_to?(:remote_ip) ? request.remote_ip : request.ip
  end
end

IpWhitelistConstraint.private_instance_methods
