.class public final Lcdx;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;

.field private final c:Ljuh;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/activity/util/ActivityFinishWithReason"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcdx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdx;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcdx;->c:Ljuh;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcdx;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Ljuh;->a()V

    invoke-static {p1}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lcdx;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcdx;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcdx;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    const-string v2, "WARNING: Activity was artificially finished: %s"

    const/16 v3, 0x37

    invoke-static {v1, v2, p1, v3}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object p1, p0, Lcdx;->c:Ljuh;

    new-instance v1, Lcdw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcdw;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
