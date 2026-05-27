.class public final Lfbq;
.super Ljava/lang/Object;

# interfaces
.implements Lfca;


# static fields
.field public static final a:Lnak;

.field private static final i:Lkru;


# instance fields
.field public final b:Ljpl;

.field final c:Ljava/util/concurrent/ArrayBlockingQueue;

.field private final d:Ljbf;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lkbc;

.field private final g:Landroid/content/Context;

.field private final h:Loiw;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/apps/camera/logging/ClearcutCameraEventLogger"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfbq;->a:Lnak;

    new-instance v0, Lkru;

    const v1, -0x39c4c95e

    const v2, 0x7f13001f

    invoke-direct {v0, v1, v2}, Lkru;-><init>(II)V

    sput-object v0, Lfbq;->i:Lkru;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lkbc;)V
    .locals 4

    sget-object v0, Ljbf;->j:Ljava/util/List;

    sget-object v0, Lffe;->f:Lffe;

    sget-object v1, Ljbk;->e:Ljava/util/EnumSet;

    const-string v2, "ANDROID_CAMERA"

    invoke-static {v2}, Ljhp;->Z(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v1}, Ljcb;->d(Landroid/content/Context;Ljava/lang/String;Lmrl;Ljava/util/EnumSet;)Ljbf;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljpi;

    invoke-direct {v2}, Ljpi;-><init>()V

    new-instance v3, Ljde;

    invoke-direct {v3, v1, v2}, Ljde;-><init>(Landroid/content/Context;Ljpi;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v1, p0, Lfbq;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object v0, p0, Lfbq;->d:Ljbf;

    iput-object v3, p0, Lfbq;->b:Ljpl;

    iput-object p2, p0, Lfbq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lfbq;->f:Lkbc;

    iput-object p1, p0, Lfbq;->g:Landroid/content/Context;

    new-instance p1, Ldom;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Ldom;-><init>(Lfbq;I)V

    iput-object p1, p0, Lfbq;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a(Lngr;)V
    .locals 4

    new-instance v0, Lbkb;

    invoke-direct {v0, p1}, Lbkb;-><init>(Lngr;)V

    iget-object p1, p0, Lfbq;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lfbq;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Queue full. Discarded camera event."

    const/16 v1, 0x834

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    iget-object p1, p0, Lfbq;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lfbq;->h:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnaa;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lfbq;->b(Lnaa;)V

    return-void

    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lfbq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x5

    invoke-static {p1, v2, v3, v0, v1}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object p1

    new-instance v0, Ldje;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Ldje;-><init>(Lfbq;I)V

    iget-object v1, p0, Lfbq;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p1, v0, v1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Lnaa;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lfbq;->f:Lkbc;

    const-string v1, "clearcut.process"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lfbq;->c:Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->drainTo(Ljava/util/Collection;I)I

    invoke-static {p1}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lnaa;->g()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lfbq;->f:Lkbc;

    :goto_0
    invoke-interface {p1}, Lkbc;->f()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    iget-object v1, p0, Lfbq;->d:Ljbf;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljbf;->e(Lnxy;)Ljbd;

    move-result-object v0

    iget-object v1, p0, Lfbq;->g:Landroid/content/Context;

    sget-object v2, Lfbq;->i:Lkru;

    invoke-static {v1, v2}, Lksw;->a(Landroid/content/Context;Lkru;)Lksw;

    move-result-object v1

    iput-object v1, v0, Ljbd;->h:Lksw;

    invoke-virtual {v0}, Ljbd;->a()Ljdl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lfbq;->f:Lkbc;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lfbq;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
