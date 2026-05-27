.class public final synthetic Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/agc/net/NetworkUtil$DownloadInfoListener;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda4;->f$1:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda4;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda4;->f$1:Lcom/agc/net/NetworkUtil$DownloadInfoListener;

    invoke-static {v0, v1}, Lcom/agc/net/NetworkUtil;->lambda$getLUTInfo$10(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadInfoListener;)V

    return-void
.end method
