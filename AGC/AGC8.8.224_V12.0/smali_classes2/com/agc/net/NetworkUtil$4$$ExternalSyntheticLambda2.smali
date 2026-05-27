.class public final synthetic Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;


# direct methods
.method public synthetic constructor <init>(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda2;->f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$4$$ExternalSyntheticLambda2;->f$0:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    invoke-static {v0}, Lcom/agc/net/NetworkUtil$4;->lambda$run$2(Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V

    return-void
.end method
