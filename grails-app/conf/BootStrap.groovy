import org.disksol.Role
import org.disksol.User
import org.disksol.UserRole

class BootStrap {

    def init = { servletContext ->
		def userZero = User.findAll();
		if (!userZero) {
			println "Setup Disque Soliraride ... "
						
			def role = new Role("ROLE_ADMIN")
			role.save flush:true
			
			def roleuser = new Role("ROLE_USER")
			roleuser.save flush:true
			
			def user = new User("admin", "admin")
			user.save flush:true
			
			def user_role = new UserRole(user, role)
			user_role.save flush:true
			
		}

    }
    def destroy = {
    }
}
