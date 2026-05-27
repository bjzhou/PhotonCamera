.class public final Laqb;
.super Ljava/lang/Object;

# interfaces
.implements Lokx;


# static fields
.field public static final c:Lokv;


# instance fields
.field public final a:Lokw;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokv;

    invoke-direct {v0}, Lokv;-><init>()V

    sput-object v0, Laqb;->c:Lokv;

    return-void
.end method

.method public constructor <init>(Lokw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Laqb;->a:Lokw;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Laqb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Laqb;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Transaction was never started or was already released."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lljr;->G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 0

    invoke-static {p0, p1}, Lljr;->H(Lokx;Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public final getKey()Loky;
    .locals 1

    sget-object v0, Laqb;->c:Lokv;

    return-object v0
.end method

.method public final minusKey(Loky;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->I(Lokx;Loky;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->J(Lokx;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method
