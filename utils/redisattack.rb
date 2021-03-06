#!/usr/bin/env ruby
# -*- coding: binary -*-
#Author: Lucifer
#Date: 2017-8-26

require File.dirname(__FILE__)+'/redis'

class RedisAttack
    # attack once
    def attack_once(ip, port, username, password, timeout)
        begin
            redis = RedisCrack.new(ip, port, username, password, timeout)
            if redis.hit
                return true
            else
                return false
            end
        rescue
            return false
        end
    end


end