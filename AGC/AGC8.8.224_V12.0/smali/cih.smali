.class public final Lcih;
.super Ljava/lang/Object;

# interfaces
.implements Lhip;
.implements Lfaz;
.implements Lfax;
.implements Lfay;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Lkbc;

.field private final d:Ldhi;

.field private final e:Lfak;

.field private final f:Ljuh;

.field private final g:Ljava/util/concurrent/Executor;

.field private h:Lnou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/assistant/CameraAssistantBehavior"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcih;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;Lfak;Ljuh;Ljava/util/concurrent/Executor;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcih;->b:Landroid/content/Context;

    iput-object p2, p0, Lcih;->d:Ldhi;

    iput-object p3, p0, Lcih;->e:Lfak;

    iput-object p4, p0, Lcih;->f:Ljuh;

    iput-object p5, p0, Lcih;->g:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lcih;->c:Lkbc;

    return-void
.end method


# virtual methods
.method public final bO()V
    .locals 2

    iget-object v0, p0, Lcih;->h:Lnou;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcna;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcna;-><init>(Lcih;I)V

    iget-object v1, p0, Lcih;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lcih;->h:Lnou;

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcih;->h:Lnou;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcig;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Lcih;I)V

    iget-object v2, p0, Lcih;->g:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcih;->h:Lnou;

    return-void
.end method

.method public final run()V
    .locals 2

    iget-object v0, p0, Lcih;->d:Ldhi;

    sget-object v1, Ldho;->W:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcih;->f:Ljuh;

    iget-object v1, p0, Lcih;->e:Lfak;

    invoke-static {v0, v1, p0}, Lfcr;->e(Ljuh;Lfak;Lfaz;)V

    return-void
.end method
