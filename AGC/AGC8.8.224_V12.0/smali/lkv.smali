.class public final Llkv;
.super Ljava/lang/Object;

# interfaces
.implements Llil;


# instance fields
.field public final a:Lnox;

.field public final b:Llgf;

.field public final c:Logd;

.field public final d:Llkz;

.field public final e:Lmap;

.field private final f:Z

.field private final g:Llku;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Llij;Landroid/content/Context;Llku;Lnox;Logd;Llkz;Llgf;Loiw;Ljava/util/concurrent/Executor;Lmqp;)V
    .locals 2

    invoke-direct {p0}, Llkv;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Llko;->a:Llko;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p3, p0, Llkv;->g:Llku;

    iput-object p7, p0, Llkv;->b:Llgf;

    invoke-virtual {p1, p9, p5, p8}, Llij;->b(Ljava/util/concurrent/Executor;Logd;Loiw;)Lmap;

    move-result-object p1

    iput-object p1, p0, Llkv;->e:Lmap;

    check-cast p2, Landroid/app/Application;

    iput-object p4, p0, Llkv;->a:Lnox;

    iput-object p5, p0, Llkv;->c:Logd;

    iput-object p6, p0, Llkv;->d:Llkz;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p10, p1}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Llkv;->f:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Llkv;->g:Llku;

    new-instance v1, Llkw;

    invoke-direct {v1, p0}, Llkw;-><init>(Llkv;)V

    iput-object v1, v0, Llku;->a:Llkt;

    return-void
.end method

.method public final ab()V
    .locals 1

    iget-boolean v0, p0, Llkv;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llkv;->a()V

    :cond_0
    return-void
.end method
