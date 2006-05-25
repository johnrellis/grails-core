
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		 <meta name="layout" content="main" />
         <title>Role List</title>
         <link rel="stylesheet" href="${createLinkTo(dir:'css',file:'main.css')}"></link>
    </head>
    <body>
        <div class="body">
           <h1>Role List</h1>
            <g:if test="flash['message']">
                 <div class="message">
                       ${flash['message']}
                 </div>
            </g:if>
           <table>
               <tr>
                   
                                      
                        <th>Id</th>
                                      
                        <th>Title</th>
                                      
                        <th>Name</th>
                                      
                        <th>Site</th>
                   
                   <th></th>
               </tr>
               <g:each in="${roleList}">
                    <tr>
                       
                            <td>${it.id}</td>
                       
                            <td>${it.title}</td>
                       
                            <td>${it.name}</td>
                       
                            <td>${it.site}</td>
                       
                       <td class="actionButtons">
                            <span class="actionButton"><g:link action="show" id="${it.id}">Show</g:link></span>
                       </td>
                    </tr>
               </g:each>
           </table>
		   <div class="paginateButtons">
		   		<g:paginate total="${Role.count()}" />
		   </div>		   		   
		   <div class="buttons">
		   		<g:form url="[action:'create']" method="get">
					<input type="submit" value="Create New" />
				</g:form>
		   </div>			   
        </div>
    </body>
</html>
            