.class public final Lcodexlutprovider;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lnro;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field public final b:Llnt;


# direct methods
.method public constructor <init>(Llnt;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcodexlutprovider;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p1, p0, Lcodexlutprovider;->b:Llnt;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lnrk;)Lnrm;
    .locals 5

    iget-object v0, p0, Lcodexlutprovider;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnrm;

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/hinnka/mycamera/previewhook/api/MgcVfeReflectiveStageFactory;->createStage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnrm;

    if-eqz v2, :cond_0_skip_log

    const-string v3, "codex_lut_chain"

    const-string v4, "created reflective lower-hook LUT stage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0_skip_log

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_0
    return-object v1
.end method
