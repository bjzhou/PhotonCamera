.class public final Lcodexlutruntime;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Llnt;

.field public static b:Lcodexlutprovider;


# direct methods
.method public static declared-synchronized a(Llnt;)V
    .locals 1

    if-eqz p0, :cond_0

    sput-object p0, Lcodexlutruntime;->a:Llnt;

    const/4 v0, 0x0

    sput-object v0, Lcodexlutruntime;->b:Lcodexlutprovider;

    :cond_0
    return-void
.end method

.method public static declared-synchronized b(Lnrk;)Lnrm;
    .locals 2

    sget-object v0, Lcodexlutruntime;->a:Llnt;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v1, Lcodexlutruntime;->b:Lcodexlutprovider;

    if-nez v1, :cond_1

    new-instance v1, Lcodexlutprovider;

    invoke-direct {v1, v0}, Lcodexlutprovider;-><init>(Llnt;)V

    sput-object v1, Lcodexlutruntime;->b:Lcodexlutprovider;

    :cond_1
    invoke-virtual {v1, p0}, Lcodexlutprovider;->a(Lnrk;)Lnrm;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized c()V
    .locals 2

    sget-object v0, Lcodexlutruntime;->b:Lcodexlutprovider;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcodexlutprovider;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnrm;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lpci;->close()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcodexlutruntime;->b:Lcodexlutprovider;

    return-void
.end method
