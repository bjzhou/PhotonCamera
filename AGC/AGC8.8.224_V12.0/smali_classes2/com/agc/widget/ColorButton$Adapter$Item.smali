.class Lcom/agc/widget/ColorButton$Adapter$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/ColorButton$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field defaultValue:Ljava/lang/String;

.field key:Ljava/lang/String;

.field title:Ljava/lang/String;

.field value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/ColorButton$Adapter$Item;->key:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/widget/ColorButton$Adapter$Item;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/widget/ColorButton$Adapter$Item;->defaultValue:Ljava/lang/String;

    return-void
.end method
