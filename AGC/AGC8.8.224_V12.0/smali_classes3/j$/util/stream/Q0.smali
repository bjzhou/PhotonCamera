.class final Lj$/util/stream/Q0;
.super Lj$/util/stream/A;


# instance fields
.field final synthetic m:Ljava/util/function/ToLongFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lj$/util/stream/A;

    return-void
.end method

.method constructor <init>(Lj$/util/stream/c;ILjava/util/function/ToLongFunction;)V
    .locals 0

    iput-object p3, p0, Lj$/util/stream/Q0;->m:Ljava/util/function/ToLongFunction;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/A;-><init>(Lj$/util/stream/c;I)V

    return-void
.end method


# virtual methods
.method final bridge synthetic O()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final P(ILj$/util/stream/Z0;)Lj$/util/stream/Z0;
    .locals 1

    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/c;Lj$/util/stream/Z0;I)V

    return-object p1
.end method
