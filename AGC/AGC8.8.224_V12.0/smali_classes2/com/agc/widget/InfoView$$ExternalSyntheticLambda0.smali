.class public final synthetic Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/widget/InfoView;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/widget/InfoView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;->f$0:Lcom/agc/widget/InfoView;

    iput-object p2, p0, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;->f$0:Lcom/agc/widget/InfoView;

    iget-object v1, p0, Lcom/agc/widget/InfoView$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/agc/widget/InfoView;->lambda$showText$0$com-agc-widget-InfoView(Ljava/lang/String;)V

    return-void
.end method
