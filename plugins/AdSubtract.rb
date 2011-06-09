##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "AdSubtract" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-06-06
version "0.1"
description "AdSubtract - a Windows proxy which removes popup ads. - Homepage: http://AdSubtract.com"

# ShodanHQ results as at 2011-06-06 #
# 65 for AdSubtract

# Examples #
examples %w|
74.219.194.205
76.106.152.110
|

# Passive #
def passive
	m=[]

	# Version Detection # HTTP Server Header
	m << { :version=>@meta["server"].scan(/^AdSubtract ([\d\.]+)$/) } if @meta["server"] =~ /^AdSubtract ([\d\.]+)$/

	# Return passive matches
	m
end

end
