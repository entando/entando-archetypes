package org.entando.entando.util;

import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import org.apache.maven.plugin.AbstractMojo;
import org.apache.maven.plugin.MojoExecutionException;
import org.apache.maven.plugin.MojoFailureException;

/**
 *
 * @author paddeo
 *
 * @goal generate
 */
public class KeyGen extends AbstractMojo {

    public void keyGenerate() throws Exception {
        KeyGenerator keyGen = KeyGenerator.getInstance("AES", "Blowfish");
        keyGen.init(256);
        SecretKey secretKey = keyGen.generateKey();
        System.getProperties().setProperty("key.generated", secretKey.toString());
    }

    public void execute() throws MojoExecutionException, MojoFailureException {
        try {
            this.keyGenerate();
        } catch (Exception ex) {
            Logger.getLogger(KeyGen.class.getName()).log(Level.SEVERE, null, ex);
            throw new MojoExecutionException("Failed to create encryption key!");
        }
    }

}
