.class public Lcom/agc/asv/FocusButton;
.super Lcom/agc/asv/WBSqua;
.source "SourceFile"


# instance fields
.field private onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/agc/asv/WBSqua;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/agc/asv/FocusButton$1;

    invoke-direct {v0, p0}, Lcom/agc/asv/FocusButton$1;-><init>(Lcom/agc/asv/FocusButton;)V

    iput-object v0, p0, Lcom/agc/asv/FocusButton;->onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/agc/asv/FocusButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/agc/asv/WBSqua;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/agc/asv/FocusButton$1;

    invoke-direct {p2, p0}, Lcom/agc/asv/FocusButton$1;-><init>(Lcom/agc/asv/FocusButton;)V

    iput-object p2, p0, Lcom/agc/asv/FocusButton;->onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/agc/asv/FocusButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/agc/asv/WBSqua;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/agc/asv/FocusButton$1;

    invoke-direct {p2, p0}, Lcom/agc/asv/FocusButton$1;-><init>(Lcom/agc/asv/FocusButton;)V

    iput-object p2, p0, Lcom/agc/asv/FocusButton;->onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/agc/asv/FocusButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/agc/asv/WBSqua;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Lcom/agc/asv/FocusButton$1;

    invoke-direct {p2, p0}, Lcom/agc/asv/FocusButton$1;-><init>(Lcom/agc/asv/FocusButton;)V

    iput-object p2, p0, Lcom/agc/asv/FocusButton;->onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Lcom/agc/asv/FocusButton;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/agc/asv/WBSqua;->init(Landroid/content/Context;)V

    sget-object p1, Lcom/agc/asv/WB$WBType;->INITN:Lcom/agc/asv/WB$WBType;

    invoke-virtual {p0, p1}, Lcom/agc/asv/WBSqua;->setWbType(Lcom/agc/asv/WB$WBType;)V

    iget-object p1, p0, Lcom/agc/asv/FocusButton;->onCheckedChange:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
