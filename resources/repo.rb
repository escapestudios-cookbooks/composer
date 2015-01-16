#
# Cookbook Name:: composer
# Resource:: repo
#
# Copyright 2012-2014, Escape Studios
#

actions :require
default_action :require

attribute :repo, :kind_of => String, :name_attribute => true
attribute :dev, :kind_of => [TrueClass, FalseClass], :default => false
attribute :quiet, :kind_of => [TrueClass, FalseClass], :default => true
attribute :optimize_autoloader, :kind_of => [TrueClass, FalseClass], :default => false
attribute :prefer_dist, :kind_of => [TrueClass, FalseClass], :default => false
attribute :user, :kind_of => String, :default => 'root'
attribute :group, :kind_of => String, :default => 'root'
attribute :umask, :kind_of => [String, Fixnum], :default => 0002

def initialize(*args)
  super
  @action = :require
end
