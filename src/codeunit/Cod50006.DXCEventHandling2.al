codeunit 50006 "DXCEventHandling2"
{
    // ---T246---
    [EventSubscriber(ObjectType::Table, 246, 'OnBeforeInsertEvent', '', false, false)]
    local procedure HandleAfterInsertOnReLine(var Rec : Record "Requisition Line"; RunTrigger : Boolean);
    var
        Item : Record Item;
    begin

        IF (Rec."Worksheet Template Name" = 'REQ') OR (Rec."Worksheet Template Name" = 'PLANNING') then begin
            Rec."Accept Action Message" := true;
            if Rec.Type = Rec.Type::Item then begin
                Item.Get(Rec."No.");
                Rec."Obsolesce Code" := Item."Obsolesce Code"; 
                Rec."Obsolesce Date" := Item."Obsolesce Date";            
                
            end;
        end;
    end;
    
}