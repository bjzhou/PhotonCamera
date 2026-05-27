.class public final Lgfv;
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

    iput-object p1, p0, Lgfv;->a:Loiw;

    iput-object p2, p0, Lgfv;->b:Loiw;

    iput-object p3, p0, Lgfv;->c:Loiw;

    iput-object p4, p0, Lgfv;->d:Loiw;

    iput-object p5, p0, Lgfv;->e:Loiw;

    iput-object p6, p0, Lgfv;->f:Loiw;

    iput-object p7, p0, Lgfv;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgfu;
    .locals 9

    iget-object v0, p0, Lgfv;->a:Loiw;

    check-cast v0, Lelo;

    invoke-virtual {v0}, Lelo;->a()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lgfv;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lknz;

    iget-object v0, p0, Lgfv;->c:Loiw;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v4

    iget-object v0, p0, Lgfv;->d:Loiw;

    check-cast v0, Ldjw;

    invoke-virtual {v0}, Ldjw;->a()Lkap;

    move-result-object v5

    iget-object v0, p0, Lgfv;->e:Loiw;

    check-cast v0, Leqz;

    invoke-virtual {v0}, Leqz;->a()Lcdi;

    move-result-object v6

    iget-object v0, p0, Lgfv;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lgfv;->g:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lkbc;

    new-instance v0, Lgfu;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lgfu;-><init>(Landroid/app/Activity;Lknz;Landroid/view/WindowManager;Lkap;Lcdi;Ljava/util/concurrent/Executor;Lkbc;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgfv;->a()Lgfu;

    move-result-object v0

    return-object v0
.end method
