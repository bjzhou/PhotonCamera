.class Lcom/agc/widget/lut/LutSelectorLayout$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/widget/lut/LutSelectorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/widget/lut/LutSelectorLayout;


# direct methods
.method public constructor <init>(Lcom/agc/widget/lut/LutSelectorLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$2;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$2;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/agc/widget/lut/LutSelectorLayout;->access$200(Lcom/agc/widget/lut/LutSelectorLayout;Z)V

    return-void
.end method
