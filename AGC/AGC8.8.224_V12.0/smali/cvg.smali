.class public final Lcvg;
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

    iput-object p1, p0, Lcvg;->a:Loiw;

    iput-object p2, p0, Lcvg;->b:Loiw;

    iput-object p3, p0, Lcvg;->c:Loiw;

    iput-object p4, p0, Lcvg;->d:Loiw;

    iput-object p5, p0, Lcvg;->e:Loiw;

    iput-object p6, p0, Lcvg;->f:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcvf;
    .locals 8

    iget-object v0, p0, Lcvg;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lgxi;

    iget-object v0, p0, Lcvg;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcqv;

    iget-object v0, p0, Lcvg;->c:Loiw;

    check-cast v0, Lctc;

    invoke-virtual {v0}, Lctc;->a()Lctb;

    move-result-object v4

    iget-object v0, p0, Lcvg;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcvg;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lgzm;

    iget-object v0, p0, Lcvg;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ldlj;

    new-instance v0, Lcvf;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcvf;-><init>(Lgxi;Lcqv;Lctb;Ljava/util/concurrent/Executor;Lgzm;Ldlj;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcvg;->a()Lcvf;

    move-result-object v0

    return-object v0
.end method
