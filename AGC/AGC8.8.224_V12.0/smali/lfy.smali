.class final Llfy;
.super Ljava/lang/Object;

# interfaces
.implements Llfx;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Llgf;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/PrimesApiImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Llfy;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llgf;Loiw;Loiw;Loiw;Lmqp;Llhe;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfy;->b:Llgf;

    iput-object p2, p0, Llfy;->c:Loiw;

    iput-object p3, p0, Llfy;->d:Loiw;

    iput-object p4, p0, Llfy;->e:Loiw;

    invoke-static {}, Llho;->k()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p6}, Llhe;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    iget-object p2, p6, Llhe;->a:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Primes init triggered from background in package: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p5, p1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    sget-object p1, Lmoc;->a:Ljava/util/WeakHashMap;

    check-cast p2, Logo;

    invoke-virtual {p2}, Logo;->a()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llil;

    invoke-interface {p2}, Llil;->ab()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Llfy;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Primes failed to initialize"

    const/16 p4, 0x117a

    invoke-static {p2, p3, p4, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object p1, p0, Llfy;->b:Llgf;

    invoke-virtual {p1}, Llgf;->a()V

    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Llfy;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lljb;

    invoke-virtual {v0}, Lljb;->e()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Llfy;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llkv;

    invoke-virtual {v0}, Llkv;->a()V

    return-void
.end method
