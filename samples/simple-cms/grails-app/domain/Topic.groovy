/*
 * Copyright 2004-2005 the original author or authors.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */ 
 
/**
 * Defines a topic within a forum (a Page of type Page.FORUM)
 *
 * @author Graeme Rocher
 * @since 10-May-2006
 */
class Topic implements Comparable { 
	@Property belongsTo = [Page,User]
	
	@Property Long id
	@Property Long version

	@Property Page forum
	@Property String title
	@Property String description
	@Property Date dateAdded = new Date()
	@Property User createdBy
	
	int compareTo(other) {
		return dateAdded.compareTo(other.dateAdded)			
	}
	
	@Property constraints = {
		title(blank:false)
		description(blank:false)
		createdBy(nullable:false)
	}
    String toString() { "$title" }	
}	
