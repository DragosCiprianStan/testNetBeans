/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Retro
 */
import javax.ws.rs. *;
import javax.ws.rs.core.MediaType;
@Path("student")
public class Student {
    @GET
    @Path("hello")
    @Produces(MediaType.APPLICATION_JSON)
    public String getHello(){
        return "hello";
    }
}
