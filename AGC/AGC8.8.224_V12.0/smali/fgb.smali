.class public final Lfgb;
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

    iput-object p1, p0, Lfgb;->a:Loiw;

    iput-object p2, p0, Lfgb;->b:Loiw;

    iput-object p3, p0, Lfgb;->c:Loiw;

    iput-object p4, p0, Lfgb;->d:Loiw;

    iput-object p5, p0, Lfgb;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfga;
    .locals 7

    iget-object v0, p0, Lfgb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljwb;

    iget-object v0, p0, Lfgb;->b:Loiw;

    check-cast v0, Litb;

    invoke-virtual {v0}, Litb;->a()Litm;

    move-result-object v3

    iget-object v0, p0, Lfgb;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v0, p0, Lfgb;->d:Loiw;

    check-cast v0, Lhyv;

    invoke-virtual {v0}, Lhyv;->a()Lmrl;

    move-result-object v5

    iget-object v0, p0, Lfgb;->e:Loiw;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v6

    new-instance v0, Lfga;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lfga;-><init>(Ljwb;Litm;Ljava/util/concurrent/ScheduledExecutorService;Lmrl;Landroid/view/WindowManager;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfgb;->a()Lfga;

    move-result-object v0

    return-object v0
.end method
