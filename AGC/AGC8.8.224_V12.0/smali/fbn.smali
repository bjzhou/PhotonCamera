.class public final Lfbn;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbn;->a:Loiw;

    iput-object p2, p0, Lfbn;->b:Loiw;

    iput-object p3, p0, Lfbn;->c:Loiw;

    iput-object p4, p0, Lfbn;->d:Loiw;

    iput-object p5, p0, Lfbn;->e:Loiw;

    iput-object p6, p0, Lfbn;->f:Loiw;

    iput-object p7, p0, Lfbn;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfbm;
    .locals 9

    iget-object v0, p0, Lfbn;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lfbn;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgzm;

    iget-object v4, p0, Lfbn;->c:Loiw;

    iget-object v0, p0, Lfbn;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljuh;

    iget-object v0, p0, Lfbn;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lkbc;

    iget-object v0, p0, Lfbn;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lfbn;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/concurrent/Executor;

    new-instance v0, Lfbm;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lfbm;-><init>(Landroid/content/Context;Lgzm;Loiw;Ljuh;Lkbc;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfbn;->a()Lfbm;

    move-result-object v0

    return-object v0
.end method
