import org.disksol.Instituicao	
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
		def instZero = Instituicao.findAll();
		if (!instZero) {
			println "Searching for FAS  "
			new File("/home/ec2-user/prefs.csv").splitEachLine(";") {fields ->
				def fas = new Instituicao()
				fas.nome = fields[4]
				fas.cnpj = "Filiada Prefeitura";
				fas.telefone =  fields[5];
				fas.descricao = "Filiada Prefeitura " + fields[4]
				
				def faslist =  Instituicao.findByNome(fields[4])
				if (!faslist) { 
					fas.save flush:true
				}
			}
		}
    }
    def destroy = {
    }
}
