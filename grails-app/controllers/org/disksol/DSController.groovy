package org.disksol

class DSController {
	
	private static final okcontents = ['image/png', 'image/jpeg', 'image/gif']
	
	def show() {

		
		render(view: "/uploadPhoto")
	}

def upload_avatar() {
  
	def f = request.getFile('avatar')
	
	def doca = Doacao.get(1)

	//	doca.avatar = f.bytes
	doca.avatarType = "ok"//f.contentType
	
	doca.save flush:true
	redirect(action:'show')
  }

def avatar_image() {
	def avatarUser =  Doacao.get(2)
	if (!avatarUser || !avatarUser.avatar || !avatarUser.avatarType) {
	  response.sendError(404)
	  return
	}
	response.contentType = avatarUser.avatarType
	response.contentLength = avatarUser.avatar.size()
	OutputStream out = response.outputStream
	out.write(avatarUser.avatar)
	out.close()
  }

}

