.class public final Laif;
.super Ljava/lang/Object;


# static fields
.field private static final j:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lxf;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/lang/Runnable;

.field public d:J

.field public e:Z

.field public f:F

.field public final g:Laie;

.field public h:Laid;

.field public final i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Laif;->j:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Laie;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxf;

    invoke-direct {v0}, Lxf;-><init>()V

    iput-object v0, p0, Laif;->a:Lxf;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laif;->b:Ljava/util/ArrayList;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Laif;)V

    iput-object v0, p0, Laif;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v0, Lnk;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Lnk;-><init>(Laif;I)V

    iput-object v0, p0, Laif;->c:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Laif;->d:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Laif;->e:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Laif;->f:F

    iput-object p1, p0, Laif;->g:Laie;

    return-void
.end method

.method public static a()Laif;
    .locals 3

    sget-object v0, Laif;->j:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Laif;

    new-instance v2, Laie;

    invoke-direct {v2}, Laie;-><init>()V

    invoke-direct {v1, v2}, Laif;-><init>(Laie;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laif;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, Laif;->g:Laie;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v0, v0, Laie;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
