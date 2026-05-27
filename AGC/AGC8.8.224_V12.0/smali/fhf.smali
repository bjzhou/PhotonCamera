.class public final Lfhf;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ldhi;

.field private final d:Lkxv;

.field private final e:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/microvideo/encoder/LoggingMuxer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfhf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ldhi;Lkxv;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfhf;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lfhf;->b:Ljava/lang/String;

    iput-object p3, p0, Lfhf;->d:Lkxv;

    iput-object p2, p0, Lfhf;->c:Ldhi;

    invoke-interface {p3}, Lkxv;->b()Lnou;

    move-result-object p2

    new-instance p3, Levy;

    const/16 v0, 0xd

    invoke-direct {p3, p2, p1, v0}, Levy;-><init>(Lnou;Ljava/lang/String;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p2, p3, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 3

    iget-object v0, p0, Lfhf;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    new-instance v1, Lfhe;

    iget-object v2, p0, Lfhf;->d:Lkxv;

    invoke-interface {v2}, Lkxv;->a()Lkxy;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lfhe;-><init>(Lfhf;Lkxy;I)V

    return-object v1
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfhf;->d:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 3

    sget-object v0, Lfhf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x8fb

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "%s: muxer cancelled."

    iget-object v2, p0, Lfhf;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lfhf;->d:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 3

    sget-object v0, Lfhf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x8ff

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "%s: starting."

    iget-object v2, p0, Lfhf;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lfhf;->d:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    return-void
.end method
