.class public abstract Lj$/util/stream/W0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/Z0;


# instance fields
.field protected final a:Lj$/util/stream/Z0;


# direct methods
.method public constructor <init>(Lj$/util/stream/Z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/Z0;->f()V

    return-void
.end method

.method public m()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/W0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/Z0;->m()Z

    move-result v0

    return v0
.end method
