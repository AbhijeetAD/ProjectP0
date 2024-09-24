package com.revature;

import static org.junit.jupiter.api.Assertions.assertTrue;

import java.io.File;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class HomePageTest {

	// This method will be executed once before all test methods in this class
    @BeforeAll
    public static void BeforeAll() {
        System.out.println("Setting up before all tests");
        
    }

    // This method will be executed once after all test methods in this class
    @AfterAll
    public static void AfterAll() {
        System.out.println("Tearing down after all tests");
        
    }

    // This method will be executed before each test method
    @BeforeEach
    public void setUpBeforeEach() {
        System.out.println("Setting up before each test");
       
    }

    // This method will be executed after each test method
    @AfterEach
    public void AfterEach() {
        System.out.println("Tearing down after each test");
        
    }
    @Test
    public void testCarouselImagesExist() {
       
        File img1 = new File("src/main/resources/static/img/p10.jpg");
        File img2 = new File("src/main/resources/static/img/p11.jpg");
        File img3 = new File("src/main/resources/static/img/p12.jpg");
        File img4 = new File("src/main/resources/static/img/p15.jpg");

        // Use assertTrue to check if the files exist and display the message if they do not
        assertTrue(img1.exists(), "Image p10.jpg should exist");
        assertTrue(img2.exists(), "Image p11.jpg should exist");
        assertTrue(img3.exists(), "Image p12.jpg should exist");
        assertTrue(img4.exists(), "Image p15.jpg should exist");
    }

    /**
     * Test to ensure that the category images are present in the project.
     */
    @Test
    public void testCategoryImagesExist() {
        // Check if the category images exist in the specified directory
        File img1 = new File("src/main/resources/static/img/e2.jpg");
        File img2 = new File("src/main/resources/static/img/beauty1.jpg");
        File img3 = new File("src/main/resources/static/img/men.jpeg");
        File img4 = new File("src/main/resources/static/img/lap1.png");

        // Use assertTrue to check if the files exist and display the message if they do not
        assertTrue(img1.exists(), "Image e2.jpg should exist");
        assertTrue(img2.exists(), "Image beauty1.jpg should exist");
        assertTrue(img3.exists(), "Image men.jpeg should exist");
        assertTrue(img4.exists(), "Image lap1.png should exist");
    }

    /**
     * Test to ensure that the latest product images are present in the project.
     */
    @Test
    public void testLatestProductImagesExist() {
        // Check if the latest product images exist in the specified directory
        File img1 = new File("src/main/resources/static/img/dell1.jpg");
        File img2 = new File("src/main/resources/static/img/cloth.jpg");
        File img3 = new File("src/main/resources/static/img/monile.png");
        File img4 = new File("src/main/resources/static/img/box.png");

        // Use assertTrue to check if the files exist and display the message if they do not
        assertTrue(img1.exists(), "Image dell1.jpg should exist");
        assertTrue(img2.exists(), "Image cloth.jpg should exist");
        assertTrue(img3.exists(), "Image monile.png should exist");
        assertTrue(img4.exists(), "Image box.png should exist");
    }
}
