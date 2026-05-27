.class public final synthetic Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

.field public final synthetic f$1:Lcom/agc/model/LutListModel$LutModel;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/net/NetworkUtil$DownloadInfoListener;Lcom/agc/model/LutListModel$LutModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;->f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;->f$1:Lcom/agc/model/LutListModel$LutModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;->f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    iget-object v1, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda0;->f$1:Lcom/agc/model/LutListModel$LutModel;

    invoke-static {v0, v1}, Lcom/agc/net/NetworkUtil$4;->lambda$run$0(Lcom/agc/net/NetworkUtil$DownloadInfoListener;Lcom/agc/model/LutListModel$LutModel;)V

    return-void
.end method
