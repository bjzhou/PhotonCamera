.class public final Lfxh;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# instance fields
.field public final a:Lkaq;

.field public final b:Lkbc;

.field public final c:Lgqh;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Landroid/graphics/Rect;

.field private final f:Lcea;

.field private final g:Lfyz;

.field private final h:Lgqt;


# direct methods
.method public constructor <init>(Lkap;Lcea;Lgqh;Lgdd;Lgqt;Lfyz;Lkbc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LSRprcssngIS"

    invoke-interface {p1, v0}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfxh;->a:Lkaq;

    iput-object p7, p0, Lfxh;->b:Lkbc;

    iput-object p2, p0, Lfxh;->f:Lcea;

    iput-object p6, p0, Lfxh;->g:Lfyz;

    iput-object p3, p0, Lfxh;->c:Lgqh;

    const-string p1, "LuckyShotEx"

    invoke-static {p1}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lfxh;->d:Ljava/util/concurrent/Executor;

    iget-object p1, p4, Lgdd;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lfxh;->e:Landroid/graphics/Rect;

    iput-object p5, p0, Lfxh;->h:Lgqt;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 9

    iget-object v0, p0, Lfxh;->g:Lfyz;

    invoke-interface {v0, p1}, Lfyz;->a(Lgkr;)Lfyy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfxg;

    iget-object v5, p0, Lfxh;->f:Lcea;

    iget-object v6, p0, Lfxh;->h:Lgqt;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lfxg;-><init>(Lfxh;Lgkr;Lfyy;Lcea;Lgqt;[B[B)V

    return-object v0
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 9

    iget-object v0, p0, Lfxh;->g:Lfyz;

    invoke-interface {v0, p1}, Lfyz;->b(Lgkr;)Lfyy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfxg;

    iget-object v5, p0, Lfxh;->f:Lcea;

    iget-object v6, p0, Lfxh;->h:Lgqt;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lfxg;-><init>(Lfxh;Lgkr;Lfyy;Lcea;Lgqt;[B[B)V

    return-object v0
.end method
