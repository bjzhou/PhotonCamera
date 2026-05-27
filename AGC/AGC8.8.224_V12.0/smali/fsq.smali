.class public final Lfsq;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfsq;->a:Loiw;

    iput-object p2, p0, Lfsq;->b:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;)Lfsq;
    .locals 1

    new-instance v0, Lfsq;

    invoke-direct {v0, p0, p1}, Lfsq;-><init>(Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfst;
    .locals 2

    iget-object v0, p0, Lfsq;->a:Loiw;

    check-cast v0, Lest;

    invoke-virtual {v0}, Lest;->a()Lmqp;

    move-result-object v0

    iget-object v1, p0, Lfsq;->b:Loiw;

    check-cast v1, Ldmf;

    invoke-virtual {v1}, Ldmf;->a()Ldne;

    move-result-object v1

    invoke-virtual {v1}, Ldne;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfst;

    goto :goto_0

    :cond_0
    invoke-static {}, Lfnn;->a()Lfsw;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfsq;->a()Lfst;

    move-result-object v0

    return-object v0
.end method
