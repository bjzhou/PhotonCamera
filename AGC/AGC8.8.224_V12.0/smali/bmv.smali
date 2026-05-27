.class public final Lbmv;
.super Lbni;


# static fields
.field public static final a:Lboc;

.field private static final h:Lbnv;


# instance fields
.field public b:Lbnq;

.field public c:Lbmw;

.field public final d:Lbmq;

.field public final e:Lbnx;

.field public final f:Lbny;

.field public g:Lbnv;

.field private final j:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lboc;

    const-string v1, "AndCamAgntImp"

    invoke-direct {v0, v1}, Lboc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbmv;->a:Lboc;

    new-instance v0, Lbmk;

    invoke-direct {v0}, Lbmk;-><init>()V

    sput-object v0, Lbmv;->h:Lbnv;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lbni;-><init>()V

    sget-object v0, Lbmv;->h:Lbnv;

    iput-object v0, p0, Lbmv;->g:Lbnv;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbmv;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lbmq;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p0, v2}, Lbmq;-><init>(Lbmv;Lbni;Landroid/os/Looper;)V

    iput-object v1, p0, Lbmv;->d:Lbmq;

    new-instance v2, Lbnv;

    invoke-direct {v2, v1}, Lbnv;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lbmv;->g:Lbnv;

    new-instance v2, Lbnx;

    invoke-direct {v2}, Lbnx;-><init>()V

    iput-object v2, p0, Lbmv;->e:Lbnx;

    new-instance v2, Lbny;

    invoke-direct {v2, v1, v0}, Lbny;-><init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lbmv;->f:Lbny;

    invoke-virtual {v2}, Lbny;->start()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbmv;->d:Lbmq;

    return-object v0
.end method

.method public final b()Lbnr;
    .locals 1

    invoke-static {}, Lbmm;->c()Lbmm;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lbnv;
    .locals 1

    iget-object v0, p0, Lbmv;->g:Lbnv;

    return-object v0
.end method

.method protected final d()Lbnx;
    .locals 1

    iget-object v0, p0, Lbmv;->e:Lbnx;

    return-object v0
.end method

.method public final e()Lbny;
    .locals 1

    iget-object v0, p0, Lbmv;->f:Lbny;

    return-object v0
.end method

.method public final f(Lbnv;)V
    .locals 0

    iput-object p1, p0, Lbmv;->g:Lbnv;

    return-void
.end method
