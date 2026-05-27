.class public final Lfxa;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field private final a:Lkli;

.field private final b:Lcea;

.field private final c:Lfyz;

.field private final d:Lgvb;

.field private final e:Lehk;


# direct methods
.method public constructor <init>(Lkli;Lcea;Lfyz;Lgvb;Lehk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxa;->a:Lkli;

    iput-object p3, p0, Lfxa;->c:Lfyz;

    iput-object p2, p0, Lfxa;->b:Lcea;

    iput-object p4, p0, Lfxa;->d:Lgvb;

    iput-object p5, p0, Lfxa;->e:Lehk;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 7

    new-instance v6, Lfwz;

    iget-object v1, p0, Lfxa;->a:Lkli;

    iget-object v2, p0, Lfxa;->b:Lcea;

    iget-object v0, p0, Lfxa;->c:Lfyz;

    invoke-interface {v0, p1}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object v3

    iget-object v4, p0, Lfxa;->d:Lgvb;

    iget-object v5, p0, Lfxa;->e:Lehk;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lfwz;-><init>(Lkli;Lcea;Lfyy;Lgvb;Lehk;)V

    return-object v6
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 7

    iget-object v0, p0, Lfxa;->c:Lfyz;

    invoke-interface {v0, p1}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lfwz;

    iget-object v2, p0, Lfxa;->a:Lkli;

    iget-object v3, p0, Lfxa;->b:Lcea;

    iget-object v5, p0, Lfxa;->d:Lgvb;

    iget-object v6, p0, Lfxa;->e:Lehk;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lfwz;-><init>(Lkli;Lcea;Lfyy;Lgvb;Lehk;)V

    return-object p1
.end method
