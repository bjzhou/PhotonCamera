.class public Lnfr;
.super Lnfx;


# instance fields
.field private final a:Lj$/util/stream/Stream;

.field public final b:Ljava/util/function/Function;

.field public final c:Ljava/util/function/Function;


# direct methods
.method public constructor <init>(Lj$/util/stream/Stream;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Lnfx;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lnfr;->a:Lj$/util/stream/Stream;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnfr;->b:Ljava/util/function/Function;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lnfr;->c:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
    .locals 3

    iget-object v0, p0, Lnfr;->a:Lj$/util/stream/Stream;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lgdn;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, v2}, Lgdn;-><init>(Lnfr;Ljava/util/function/BiFunction;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lnfr;->a:Lj$/util/stream/Stream;

    invoke-interface {v0}, Lj$/util/stream/Stream;->close()V

    return-void
.end method
