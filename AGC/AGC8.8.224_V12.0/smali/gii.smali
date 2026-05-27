.class public final Lgii;
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

    iput-object p1, p0, Lgii;->a:Loiw;

    iput-object p2, p0, Lgii;->b:Loiw;

    iput-object p3, p0, Lgii;->c:Loiw;

    iput-object p4, p0, Lgii;->d:Loiw;

    iput-object p5, p0, Lgii;->e:Loiw;

    iput-object p6, p0, Lgii;->f:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgii;
    .locals 8

    new-instance v7, Lgii;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lgii;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v7
.end method


# virtual methods
.method public final b()Lkpo;
    .locals 8

    iget-object v0, p0, Lgii;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lken;

    iget-object v0, p0, Lgii;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    iget-object v0, p0, Lgii;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljvs;

    iget-object v0, p0, Lgii;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljuf;

    iget-object v0, p0, Lgii;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lgii;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/util/Map;

    new-instance v0, Lkpo;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkpo;-><init>(Lken;Ljava/util/Map;Ljvs;Ljuf;Ljava/util/concurrent/Executor;Ljava/util/Map;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgii;->b()Lkpo;

    move-result-object v0

    return-object v0
.end method
