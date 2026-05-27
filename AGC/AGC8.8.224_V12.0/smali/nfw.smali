.class public final Lnfw;
.super Lnfx;


# instance fields
.field public final a:Lj$/util/stream/Stream;

.field public final b:Lj$/util/stream/Stream;


# direct methods
.method public constructor <init>(Lj$/util/stream/Stream;Lj$/util/stream/Stream;)V
    .locals 0

    invoke-direct {p0}, Lnfx;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnfw;->a:Lj$/util/stream/Stream;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnfw;->b:Lj$/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnft;

    invoke-direct {v0, p0, p1}, Lnft;-><init>(Lnfw;Ljava/util/function/BiFunction;)V

    const/16 p1, 0x10

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lj$/util/stream/StreamSupport;->stream(Ljava/util/function/Supplier;IZ)Lj$/util/stream/Stream;

    move-result-object p1

    iget-object v0, p0, Lnfw;->a:Lj$/util/stream/Stream;

    new-instance v1, Llmm;

    const/16 v2, 0xd

    invoke-direct {v1, v0, v2}, Llmm;-><init>(Lj$/util/stream/Stream;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    iget-object v0, p0, Lnfw;->b:Lj$/util/stream/Stream;

    new-instance v1, Llmm;

    invoke-direct {v1, v0, v2}, Llmm;-><init>(Lj$/util/stream/Stream;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Lj$/util/stream/BaseStream;

    move-result-object p1

    check-cast p1, Lj$/util/stream/Stream;

    return-object p1
.end method

.method public final close()V
    .locals 8

    iget-object v0, p0, Lnfw;->a:Lj$/util/stream/Stream;

    :try_start_0
    iget-object v1, p0, Lnfw;->b:Lj$/util/stream/Stream;

    invoke-interface {v1}, Lj$/util/stream/Stream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_2
    const-class v2, Ljava/lang/Throwable;

    const-string v3, "addSuppressed"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Throwable;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    throw v1
.end method
