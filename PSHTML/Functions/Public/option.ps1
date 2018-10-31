Function option {
    <#
    .SYNOPSIS
    Create a <option> tag in an HTML document.

    .DESCRIPTION

    The <option> tag defines an option in a select list.

    <option> elements go inside a <select> or <datalist> element.


    .EXAMPLE
    
        
    datalist {
        option -value "Volvo" -Content "Volvo" 
        option -value Saab -Content "saab"
    }


    Generates the following code:

    <datalist>
        <option value="Volvo"  >volvo</option>
        <option value="Saab"  >saab</option>
    </datalist>


    .EXAMPLE
    

    .NOTES
    Current version 2.0
       History:
       2018.10.30;@ChristopheKumor;Updated to version 3.0
            2018.10.05;@stephanevg;Creation.
    .LINK
        https://github.com/Stephanevg/PSHTML
    #>
    [Cmdletbinding()]
    Param(
        [Parameter(Mandatory = $false)]
        [AllowEmptyString()]
        [AllowNull()]
        $Content,

        [string]$value,

        [string]$label,

        [Switch]$Disabled,

        [Switch]$Selected,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Class = "",

        [String]$Id,

        [AllowEmptyString()]
        [AllowNull()]
        [String]$Style,

        [String]$title,

        [Hashtable]$Attributes
    )


    $tagname = "option"
 
    Set-HtmlTag -TagName $tagname -PSBParameters $PSBoundParameters -MyCParametersKeys $MyInvocation.MyCommand.Parameters.Keys -TagType NonVoid

}

