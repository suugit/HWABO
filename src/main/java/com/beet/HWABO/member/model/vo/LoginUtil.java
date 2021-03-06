package com.beet.HWABO.member.model.vo;


import com.github.scribejava.core.model.OAuth2AccessToken;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.concurrent.ExecutionException;

public interface LoginUtil {
    String getAuthorizationUrl(HttpSession session);
    OAuth2AccessToken getAccessToken(HttpSession session, String code, String state) throws  IOException, InterruptedException, ExecutionException;
    String getUserProfile(OAuth2AccessToken oauthToken) throws Exception;
    String generateRandomString();
    String getAccessTokens(HttpSession session, String code, String state);
    String getUserProfiles(String oauthToken);
    void logOut(String oauthToken);
}