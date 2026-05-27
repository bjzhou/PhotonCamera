.class public final synthetic Leri;
.super Ljava/lang/Object;

# interfaces
.implements Loiw;


# instance fields
.field public final synthetic a:Loiw;

.field public final synthetic b:Lcvr;


# direct methods
.method public synthetic constructor <init>(Lcvr;Loiw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leri;->b:Lcvr;

    iput-object p2, p0, Leri;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Leri;->b:Lcvr;

    iget-object v1, p0, Leri;->a:Loiw;

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckd;

    check-cast v1, Logo;

    invoke-virtual {v1}, Logo;->a()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcwd;

    const/16 v3, 0xb

    invoke-direct {v2, v0, v3}, Lcwd;-><init>(Lckd;I)V

    invoke-interface {v1, v2}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lmtf;->b:Lj$/util/stream/Collector;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
