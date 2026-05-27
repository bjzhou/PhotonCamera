.class public final synthetic Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$1:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    iput-object p3, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$1:Lcom/agc/net/NetworkUtil$DownloadProgressListener;

    iget-object v2, p0, Lcom/agc/net/NetworkUtil$$ExternalSyntheticLambda6;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/agc/net/NetworkUtil;->lambda$downloadLutFile$11(Ljava/lang/String;Lcom/agc/net/NetworkUtil$DownloadProgressListener;Ljava/lang/String;)V

    return-void
.end method
