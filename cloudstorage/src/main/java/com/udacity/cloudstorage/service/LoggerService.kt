package com.udacity.cloudstorage.service

import javax.crypto.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service

@Service
class LoggerService {
    fun getLogger(): Logger = LoggerFactory.getLogger(HashService::class.java)
}