.class public final Lcjf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lnou;

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/async/OptionalFuture"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcjf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lnou;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjf;->b:Lnou;

    iput-wide p2, p0, Lcjf;->c:J

    return-void
.end method

.method public static a()Lcjf;
    .locals 4

    new-instance v0, Lcjf;

    const/4 v1, 0x0

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcjf;-><init>(Lnou;J)V

    return-object v0
.end method


# virtual methods
.method public final b()Lmqp;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcjf;->b:Lnou;

    iget-wide v1, p0, Lcjf;->c:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcjf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xca

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    iget-object v1, p0, Lcjf;->b:Lnou;

    const-string v2, "Failed to resolve %s, returning absent instead."

    invoke-interface {v0, v2, v1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method
