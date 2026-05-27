.class final Lfxs;
.super Ljava/lang/Object;

# interfaces
.implements Lfyz;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lgqh;

.field public final c:Landroid/graphics/Rect;

.field public final d:Ljava/util/concurrent/Executor;

.field private final e:Lcea;

.field private final f:Lbkb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/one/imagesaver/imagesavers/YuvImageBackendImageSaver"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfxs;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcea;Lgqh;Lgdd;Lbkb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxs;->e:Lcea;

    iput-object p2, p0, Lfxs;->b:Lgqh;

    iput-object p4, p0, Lfxs;->f:Lbkb;

    iget-object p1, p3, Lgdd;->c:Landroid/graphics/Rect;

    iput-object p1, p0, Lfxs;->c:Landroid/graphics/Rect;

    const-string p1, "BckndYuvEx"

    invoke-static {p1}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lfxs;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lgkr;)Lfyy;
    .locals 8

    iget-object v0, p0, Lfxs;->e:Lcea;

    invoke-virtual {v0}, Lcea;->d()Lkab;

    move-result-object v4

    new-instance v5, Lfxu;

    iget-object v0, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-direct {v5, v0, v4}, Lfxu;-><init>(Lgxl;Lkab;)V

    new-instance v0, Lfxi;

    new-instance v7, Lfxr;

    iget-object v3, p1, Lgkr;->c:Ljava/lang/Object;

    iget-object p1, p0, Lfxs;->f:Lbkb;

    sget-object v1, Lfyk;->b:Lfyk;

    new-instance v6, Lfym;

    iget-object p1, p1, Lbkb;->a:Ljava/lang/Object;

    invoke-direct {v6, p1, v1}, Lfym;-><init>(Ljava/util/Set;Lfyk;)V

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lfxr;-><init>(Lfxs;Lgxl;Lkab;Lgqm;Lfym;)V

    invoke-direct {v0, v7}, Lfxi;-><init>(Lfxr;)V

    return-object v0
.end method

.method public final b(Lgkr;)Lfyy;
    .locals 0

    invoke-virtual {p0, p1}, Lfxs;->a(Lgkr;)Lfyy;

    move-result-object p1

    return-object p1
.end method
