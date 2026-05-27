.class public final synthetic Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/widget/ColorButton$Adapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/widget/ColorButton$Adapter;ZLandroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/agc/widget/ColorButton$Adapter;

    iput-boolean p2, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$0:Lcom/agc/widget/ColorButton$Adapter;

    iget-boolean v1, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/agc/widget/ColorButton$Adapter$$ExternalSyntheticLambda0;->f$2:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Lcom/agc/widget/ColorButton$Adapter;->lambda$getView$0$com-agc-widget-ColorButton$Adapter(ZLandroid/widget/EditText;)V

    return-void
.end method
