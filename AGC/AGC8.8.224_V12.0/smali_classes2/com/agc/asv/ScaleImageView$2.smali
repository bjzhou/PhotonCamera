.class Lcom/agc/asv/ScaleImageView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/asv/ScaleImageView;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/asv/ScaleImageView;


# direct methods
.method public constructor <init>(Lcom/agc/asv/ScaleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/asv/ScaleImageView$2;->this$0:Lcom/agc/asv/ScaleImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/agc/asv/ScaleImageView$2;->this$0:Lcom/agc/asv/ScaleImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/asv/AgcSeekbarDialog;->showDialog(Landroid/content/Context;)V

    return-void
.end method
