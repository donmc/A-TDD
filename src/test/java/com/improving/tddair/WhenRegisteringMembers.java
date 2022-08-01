package com.improving.tddair;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

public class WhenRegisteringMembers {
    @Test
    public void shouldHaveCorrectUsername(){
        TddAirApplication app = new TddAirApplication();
        String username = "donmc";
        app.registerMember(username, "don@improving.com");
        Member member = app.lookUpMember(username);

        assertNotNull(member);
        assertEquals(username, member.getUsername());
    }
}
