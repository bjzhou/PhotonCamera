.class final Llnt;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z

.field private final e:Llnf;

.field private final f:Llni;

.field private final g:Llno;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmqp;Lmqp;Lmqp;Lmqp;Lmqp;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Llnf;->b:Llnf;

    invoke-virtual {p2, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llnf;

    sget-object v0, Llni;->b:Llni;

    invoke-virtual {p3, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Llni;

    sget-object v0, Llno;->b:Llno;

    invoke-virtual {p4, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Llno;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p5, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-virtual {p6, v0}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual {p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CAMERA_ANDROID_PRIMES"

    iput-object v0, p0, Llnt;->b:Ljava/lang/String;

    iput-object p2, p0, Llnt;->e:Llnf;

    iput-object p3, p0, Llnt;->f:Llni;

    iput-object p4, p0, Llnt;->g:Llno;

    iput-boolean p5, p0, Llnt;->c:Z

    iput-boolean p6, p0, Llnt;->d:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.google.android.libraries.performance.primes#"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Llnt;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 5

    iget-object v0, p0, Llnt;->e:Llnf;

    invoke-interface {v0}, Llnf;->a()Lnou;

    move-result-object v0

    iget-object v1, p0, Llnt;->f:Llni;

    invoke-interface {v1}, Llni;->a()Lnou;

    move-result-object v1

    iget-object v2, p0, Llnt;->g:Llno;

    invoke-interface {v2}, Llno;->a()Lnou;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Lnou;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    invoke-static {v3}, Lnsy;->v([Lnou;)Lnom;

    move-result-object v3

    new-instance v4, Llns;

    invoke-direct {v4, p0, v0, v1, v2}, Llns;-><init>(Llnt;Lnou;Lnou;Lnou;)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-virtual {v3, v4, v0}, Lnom;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method
