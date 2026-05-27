.class Lcom/agc/widget/lut/LutSelectorLayout$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/widget/lut/LutItemAdapter$OnLutClick;


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

    iput-object p1, p0, Lcom/agc/widget/lut/LutSelectorLayout$3;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHideAds(Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/widget/lut/LutSelectorLayout$3;->this$0:Lcom/agc/widget/lut/LutSelectorLayout;

    invoke-static {v0, p1, p2}, Lcom/agc/widget/lut/LutSelectorLayout;->access$000(Lcom/agc/widget/lut/LutSelectorLayout;Lcom/agc/model/LutListModel$LutModel;Ljava/lang/String;)V

    return-void
.end method
