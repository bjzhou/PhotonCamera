.class public final Lcqe;
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

.field private final g:Loiw;

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqe;->a:Loiw;

    iput-object p2, p0, Lcqe;->b:Loiw;

    iput-object p3, p0, Lcqe;->c:Loiw;

    iput-object p4, p0, Lcqe;->d:Loiw;

    iput-object p5, p0, Lcqe;->e:Loiw;

    iput-object p6, p0, Lcqe;->f:Loiw;

    iput-object p7, p0, Lcqe;->g:Loiw;

    iput-object p8, p0, Lcqe;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcqd;
    .locals 15

    iget-object v0, p0, Lcqe;->a:Loiw;

    check-cast v0, Ldaz;

    invoke-virtual {v0}, Ldaz;->a()Ldja;

    move-result-object v2

    iget-object v0, p0, Lcqe;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcqn;

    iget-object v0, p0, Lcqe;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Llij;

    iget-object v0, p0, Lcqe;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Llij;

    iget-object v0, p0, Lcqe;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcvr;

    iget-object v0, p0, Lcqe;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcsa;

    iget-object v0, p0, Lcqe;->g:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    move-result-object v8

    iget-object v0, p0, Lcqe;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ldhi;

    new-instance v0, Lcqd;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcqd;-><init>(Ldja;Lcqn;Llij;Llij;Lcvr;Lcsa;Lklj;Ldhi;[B[B[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcqe;->a()Lcqd;

    move-result-object v0

    return-object v0
.end method
