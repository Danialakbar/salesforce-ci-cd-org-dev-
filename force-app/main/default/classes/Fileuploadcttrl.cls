public class Fileuploadcttrl {
    @AuraEnabled(cacheable=false)
    public static List<ContentDocumentLink> fetchFiles(String recordIddd){
        return [SELECT LinkedEntityId, ContentDocument.CreatedDate, ContentDocument.ContentSize, ContentDocument.FileType 
                    FROM ContentDocumentLink  
                WHERE LinkedEntityId  =:recordId];
    }
}