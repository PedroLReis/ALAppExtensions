﻿// ------------------------------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved. 
// Licensed under the MIT License. See License.txt in the project root for license information. 
// ------------------------------------------------------------------------------------------------

pageextension 1440 "Headlines RC Bus. Mgr. Ext." extends "Headline RC Business Manager"
{

    layout
    {
        addlast(Content)
        {

            group(MostPopularItem)
            {
                Visible = MostPopularItemVisible;
                ShowCaption = false;
                Editable = false;

                field(MostPopularItemText; MostPopularItemText)
                {
                    ApplicationArea = Basic, Suite;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownMostPopularItem();
                    end;
                }
            }

            group(BusiestResource)
            {
                Visible = BusiestResourceVisible;
                ShowCaption = false;
                Editable = false;

                field(BusiestResourceText; BusiestResourceText)
                {
                    ApplicationArea = Basic, Suite;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownBusiestResource();
                    end;
                }
            }

            group(TopCustomerVisible)
            {
                Visible = TopCustomerVisible;
                Editable = false;
                ShowCaption = false;

                field(TopCustomerText; TopCustomerText)
                {
                    ApplicationArea = Basic, Suite;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownTopCustomer();
                    end;
                }
            }

            group(LargestOrder)
            {
                Visible = LargestOrderVisible;
                ShowCaption = false;
                Editable = false;

                field(LargestOrderText; LargestOrderText)
                {
                    ApplicationArea = Basic, Suite;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownLargestOrder();
                    end;
                }
            }

            group(LargestSale)
            {
                Visible = LargestSaleVisible;
                ShowCaption = false;
                Editable = false;

                field(LargestSaleText; LargestSaleText)
                {
                    ApplicationArea = Basic, Suite;
                    DrillDown = true;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownLargestSale();
                    end;
                }
            }

            group(SalesIncrease)
            {
                Visible = SalesIncreaseVisible;
                ShowCaption = false;
                Editable = false;

                field(SalesIncreaseText; SalesIncreaseText)
                {
                    ApplicationArea = Basic, Suite;

                    trigger OnDrillDown()
                    var
                        EssentialBusHeadlineMgt: Codeunit "Essential Bus. Headline Mgt.";
                    begin
                        EssentialBusHeadlineMgt.OnDrillDownSalesIncrease();
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnSetVisibility(MostPopularItemVisible, MostPopularItemText,
                        LargestOrderVisible, LargestOrderText,
                        LargestSaleVisible, LargestSaleText,
                        SalesIncreaseVisible, SalesIncreaseText,
                        BusiestResourceVisible, BusiestResourceText,
                        TopCustomerVisible, TopCustomerText);
    end;

    [IntegrationEvent(false, false)]
    local procedure OnSetVisibility(var MostPopularItemVisible: Boolean; var MostPopularItemText: Text[250];
                                    var LargestOrderVisible: Boolean; var LargestOrderText: Text[250];
                                    var LargestSaleVisible: Boolean; var LargestSaleText: Text[250];
                                    var SalesIncreaseVisible: Boolean; var SalesIncreaseText: Text[250];
                                    var BusiestResourceVisible: Boolean; var BusiestResourceText: Text[250];
                                    var TopCustomerVisible: Boolean; var TopCustomerText: Text[250])
    begin
    end;

    var
        [InDataSet]
        MostPopularItemVisible: Boolean;
        [InDataSet]
        MostPopularItemText: Text[250];

        [InDataSet]
        LargestOrderVisible: Boolean;
        [InDataSet]
        LargestOrderText: Text[250];

        [InDataSet]
        LargestSaleVisible: Boolean;
        [InDataSet]
        LargestSaleText: Text[250];

        [InDataSet]
        SalesIncreaseVisible: Boolean;
        [InDataSet]
        SalesIncreaseText: Text[250];

        [InDataSet]
        BusiestResourceVisible: Boolean;
        [InDataSet]
        BusiestResourceText: Text[250];

        [InDataSet]
        TopCustomerVisible: Boolean;
        [InDataSet]
        TopCustomerText: Text[250];
}