.class public final Lehl;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lehl;->a:Loiw;

    iput-object p2, p0, Lehl;->b:Loiw;

    iput-object p3, p0, Lehl;->c:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;)Lehl;
    .locals 1

    new-instance v0, Lehl;

    invoke-direct {v0, p0, p1, p2}, Lehl;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lehk;
    .locals 9

    iget-object v0, p0, Lehl;->a:Loiw;

    check-cast v0, Lehm;

    invoke-virtual {v0}, Lehm;->b()Lva;

    move-result-object v2

    iget-object v0, p0, Lehl;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgxi;

    iget-object v0, p0, Lehl;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v0, Lehk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lehk;-><init>(Lva;Lgxi;Ljava/util/concurrent/Executor;[B[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lehl;->a()Lehk;

    move-result-object v0

    return-object v0
.end method
