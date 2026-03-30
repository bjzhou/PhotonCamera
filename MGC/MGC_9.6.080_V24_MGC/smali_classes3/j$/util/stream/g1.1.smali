.class final Lj$/util/stream/g1;
.super Lj$/util/stream/G;
.source "SourceFile"


# instance fields
.field final synthetic m:Ljava/util/function/ToLongFunction;


# direct methods
.method constructor <init>(Lj$/util/stream/k1;ILjava/util/function/ToLongFunction;)V
    .locals 0

    iput-object p3, p0, Lj$/util/stream/g1;->m:Ljava/util/function/ToLongFunction;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1
.end method
