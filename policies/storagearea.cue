name:                     string
fullyQualifiedName?:      null | string
description:              string
kind:                     "storage"
version:                  string & =~"^[0-9]+\\.[0-9]+\\..+$"
infrastructureTemplateId: string
useCaseTemplateId:        string
dependsOn: [...string]
platform:    "CDP Private"
technology:  "HDFS"
StorageType: "Files"
tags: [...string]
specific: (#StorageArea_Specific)


#StorageArea_Specific: {
	rootFolder: string & =~ "^\/([A-Za-z0-9-]+\/?)*$"
	folder: string & =~ "^\/?([A-Za-z0-9-]+\/?)*$"
}