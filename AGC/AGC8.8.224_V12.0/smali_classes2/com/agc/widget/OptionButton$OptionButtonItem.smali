.class public Lcom/agc/widget/OptionButton$OptionButtonItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/OptionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OptionButtonItem"
.end annotation


# instance fields
.field color:I

.field icon:Ljava/lang/String;

.field final synthetic this$0:Lcom/agc/widget/OptionButton;

.field title:Ljava/lang/String;

.field value:I


# direct methods
.method public constructor <init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->this$0:Lcom/agc/widget/OptionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->icon:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->title:Ljava/lang/String;

    iput p4, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    return-void
.end method

.method public constructor <init>(Lcom/agc/widget/OptionButton;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->this$0:Lcom/agc/widget/OptionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->icon:Ljava/lang/String;

    iput-object p3, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->title:Ljava/lang/String;

    iput p4, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->value:I

    iput p5, p0, Lcom/agc/widget/OptionButton$OptionButtonItem;->color:I

    return-void
.end method
