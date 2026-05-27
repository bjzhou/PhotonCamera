.class public final Llfz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llfz;->a:Loiw;

    iput-object p2, p0, Llfz;->b:Loiw;

    iput-object p3, p0, Llfz;->c:Loiw;

    iput-object p4, p0, Llfz;->d:Loiw;

    iput-object p5, p0, Llfz;->e:Loiw;

    iput-object p6, p0, Llfz;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llfy;
    .locals 10

    iget-object v0, p0, Llfz;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Llgf;

    iget-object v3, p0, Llfz;->b:Loiw;

    iget-object v4, p0, Llfz;->c:Loiw;

    iget-object v5, p0, Llfz;->d:Loiw;

    iget-object v0, p0, Llfz;->e:Loiw;

    check-cast v0, Logl;

    iget-object v0, v0, Logl;->a:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lmqp;

    iget-object v0, p0, Llfz;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Llhe;

    new-instance v0, Llfy;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Llfy;-><init>(Llgf;Loiw;Loiw;Loiw;Lmqp;Llhe;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Llfz;->a()Llfy;

    move-result-object v0

    return-object v0
.end method
