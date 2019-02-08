tableextension 50037 "DXCReqLineExt2" extends "Requisition Line" //MyTargetTableId
{
    fields
    {
         field(50001;"Obsolesce Code";Option)
        {            
            CaptionML = ENU='Obsolescence Code',                     
                        ENC='Obsolescence Code';
            OptionMembers = " ",EOL, RMA, ECR;                      
        }

        field(50002;"Obsolesce Date";Date)
        {
            CaptionML = ENU='Obsolescence Date',                     
                        ENC='Obsolescence Date';
                               
        }
        
    }
    
}