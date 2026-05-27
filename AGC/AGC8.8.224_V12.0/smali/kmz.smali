.class public final Lkmz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnph;

.field public final b:J

.field public final synthetic c:Lkna;


# direct methods
.method public constructor <init>(Lkna;J)V
    .locals 0

    iput-object p1, p0, Lkmz;->c:Lkna;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lkmz;->b:J

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iput-object p1, p0, Lkmz;->a:Lnph;

    new-instance p2, Lkcu;

    const/16 p3, 0x10

    invoke-direct {p2, p0, p3}, Lkcu;-><init>(Lkmz;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-virtual {p1, p2, p3}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method final a(Lkmy;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lkmz;->a:Lnph;

    new-instance v0, Lkdf;

    invoke-direct {v0}, Lkdf;-><init>()V

    invoke-virtual {p1, v0}, Lnph;->a(Ljava/lang/Throwable;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lkmz;->a:Lnph;

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkmy;->close()V

    :cond_1
    return-void
.end method
