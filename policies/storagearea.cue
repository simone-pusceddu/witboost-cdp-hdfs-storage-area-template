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
tags: [...#OM_Tag]
specific: (#StorageArea_Specific)

#OM_Tag: {
	tagFQN:       string
	description?: string | null
	source:       string & =~"(?i)^(Tag|Glossary)$"
	labelType:    string & =~"(?i)^(Manual|Propagated|Automated|Derived)$"
	state:        string & =~"(?i)^(Suggested|Confirmed)$"
	href?:        string | null
}

#StorageArea_Specific: {
	rootFolder: string & =~ "^\/([A-Za-z0-9-]+\/?)*$"
	folder: string & =~ "^\/?([A-Za-z0-9-]+\/?)*$"
}