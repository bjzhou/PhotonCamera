.class public final Lhpa;
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

.field private final i:Loiw;

.field private final j:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpa;->a:Loiw;

    iput-object p2, p0, Lhpa;->b:Loiw;

    iput-object p3, p0, Lhpa;->c:Loiw;

    iput-object p4, p0, Lhpa;->d:Loiw;

    iput-object p5, p0, Lhpa;->e:Loiw;

    iput-object p6, p0, Lhpa;->f:Loiw;

    iput-object p7, p0, Lhpa;->g:Loiw;

    iput-object p8, p0, Lhpa;->h:Loiw;

    iput-object p9, p0, Lhpa;->i:Loiw;

    iput-object p10, p0, Lhpa;->j:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhoz;
    .locals 15

    iget-object v0, p0, Lhpa;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcgy;

    iget-object v0, p0, Lhpa;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lhpa;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljuf;

    iget-object v0, p0, Lhpa;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljuh;

    iget-object v0, p0, Lhpa;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lico;

    iget-object v0, p0, Lhpa;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lhlu;

    iget-object v0, p0, Lhpa;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljew;

    iget-object v0, p0, Lhpa;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lhlw;

    iget-object v0, p0, Lhpa;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lhnb;

    iget-object v0, p0, Lhpa;->j:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lhpq;

    new-instance v0, Lhoz;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lhoz;-><init>(Lcgy;Ljava/util/concurrent/Executor;Ljuf;Ljuh;Lico;Lhlu;Ljew;Lhlw;Lhnb;Lhpq;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lhpa;->a()Lhoz;

    move-result-object v0

    return-object v0
.end method
