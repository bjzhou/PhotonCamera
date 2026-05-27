.class public final Leuq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leuq;->a:Loiw;

    iput-object p2, p0, Leuq;->b:Loiw;

    iput-object p3, p0, Leuq;->c:Loiw;

    iput-object p4, p0, Leuq;->d:Loiw;

    iput-object p5, p0, Leuq;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Leup;
    .locals 9

    iget-object v0, p0, Leuq;->a:Loiw;

    check-cast v0, Lelu;

    invoke-virtual {v0}, Lelu;->a()Ljava/lang/ref/WeakReference;

    move-result-object v2

    iget-object v0, p0, Leuq;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljuh;

    iget-object v0, p0, Leuq;->c:Loiw;

    check-cast v0, Lera;

    invoke-virtual {v0}, Lera;->a()Lbkc;

    move-result-object v4

    iget-object v0, p0, Leuq;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcgy;

    iget-object v0, p0, Leuq;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    new-instance v0, Leup;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Leup;-><init>(Ljava/lang/ref/WeakReference;Ljuh;Lbkc;Lcgy;Ljava/util/concurrent/Executor;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leuq;->a()Leup;

    move-result-object v0

    return-object v0
.end method
