.class public final Lhoz;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/BroadcastReceiver;

.field public final c:Lcgy;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljuf;

.field public final f:Ljuh;

.field public final g:Lico;

.field public final h:Lhlu;

.field public final i:Lhnb;

.field public final j:Lhpq;

.field public k:Leg;

.field l:Lmvv;

.field public final m:Lhlw;

.field public n:Ljes;

.field public final o:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/TimelapseStateMonitor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhoz;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcgy;Ljava/util/concurrent/Executor;Ljuf;Ljuh;Lico;Lhlu;Ljew;Lhlw;Lhnb;Lhpq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget p11, Lmvv;->d:I

    sget-object p11, Lmyu;->a:Lmvv;

    iput-object p11, p0, Lhoz;->l:Lmvv;

    iput-object p1, p0, Lhoz;->c:Lcgy;

    iput-object p2, p0, Lhoz;->d:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lhoz;->f:Ljuh;

    iput-object p5, p0, Lhoz;->g:Lico;

    iput-object p6, p0, Lhoz;->h:Lhlu;

    iput-object p7, p0, Lhoz;->o:Ljew;

    iput-object p8, p0, Lhoz;->m:Lhlw;

    iput-object p9, p0, Lhoz;->i:Lhnb;

    iput-object p3, p0, Lhoz;->e:Ljuf;

    iput-object p10, p0, Lhoz;->j:Lhpq;

    new-instance p1, Lhoy;

    invoke-direct {p1, p0}, Lhoy;-><init>(Lhoz;)V

    iput-object p1, p0, Lhoz;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public final a(Lhlv;Z)V
    .locals 2

    invoke-virtual {p1}, Lhlv;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lhoz;->f:Ljuh;

    new-instance v0, Lbnd;

    const/16 v1, 0x10

    invoke-direct {v0, p0, p2, v1}, Lbnd;-><init>(Lhoz;ZI)V

    invoke-virtual {p1, v0}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lhoz;->n:Ljes;

    iget-object p1, p1, Ljes;->b:Ljava/lang/Object;

    check-cast p1, Lhos;

    invoke-virtual {p1}, Lhos;->h()Z

    return-void
.end method
