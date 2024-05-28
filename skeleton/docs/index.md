{%- set domainNameNormalized = values.domain | replace("domain:", "") | replace(r/ |_/g, "-") | lower %}
{%- set dataProductNameNormalized = values.dataproduct.split(".")[1] | replace(r/ |_/g, "-") | lower %}
{%- set componentNameNormalized = values.name | replace(r/ |_/g, "-") | lower %}
{%- set dataProductMajorVersion = values.identifier.split(".")[2] -%}
## Component Information

| Field Name               | Value                            |
|:-------------------------|:---------------------------------|
| **Name**                 | ${{ values.name }}               |
| **Fully Qualified Name** | ${{ values.fullyQualifiedName }} |
| **Description**          | ${{ values.description }}        |
| **Domain**               | ${{ values.domain }}             |
| **Data Product**         | ${{ values.dataproduct }}        |
| **Identifier**           | ${{ values.identifier }}         |
| **Depends On**           | ${{ values.dependsOn }}          |

## HDFS Information

| Field Name           | Value |
|:---------------------|:---|
| **Root Folder**      |  `${{ values.prefixPath }}data-products/${{ domainNameNormalized }}/${{ dataProductNameNormalized }}/${{ dataProductMajorVersion }}` |
| **Component Folder** | `${{ componentNameNormalized }}` |

The created folder will be located in `${{ values.prefixPath }}data-products/${{ domainNameNormalized }}/${{ dataProductNameNormalized }}/${{ dataProductMajorVersion }}/${{ componentNameNormalized }}`, and the Security Zone will cover all files and folders inside the **Root Folder** path.
