.class public final Lcui;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljyc;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lgys;

.field public final e:Lgyb;

.field public final f:Lgyt;


# direct methods
.method public constructor <init>(Ljyc;Lcsu;Lgys;Lgyt;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcui;->b:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcui;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcui;->a:Ljyc;

    iput-object p3, p0, Lcui;->d:Lgys;

    iget-object p1, p2, Lcsu;->a:Lctd;

    invoke-interface {p1}, Lctd;->b()Lgyb;

    move-result-object p1

    iput-object p1, p0, Lcui;->e:Lgyb;

    iput-object p4, p0, Lcui;->f:Lgyt;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 3

    iget-object v0, p0, Lcui;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcui;->a:Ljyc;

    invoke-interface {v0}, Ljyc;->close()V

    iget-object v0, p0, Lcui;->b:Ljava/util/List;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcpy;->e:Lcpy;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcot;->d:Lcot;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
