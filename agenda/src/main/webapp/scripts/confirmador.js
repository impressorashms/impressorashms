/**
 * Confirmar a exclusao de um contato
 * 
 * @author Professor Jose de Assis
 * @param idcon
 */

function confirmar(idcon) {
	let resposta = confirm("Confirma a exclusão desta impressora?")
	if (resposta === true) {
		window.location.href = "delete?idcon=" + idcon
	}
}

