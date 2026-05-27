.class public final Lhyd;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmqp;

.field public c:Z

.field public d:Ljwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/hotshot/HotshotViewAdapter"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhyd;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewStub;Ldhi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhyd;->c:Z

    new-instance v1, Ljvk;

    new-array v0, v0, [Lhyb;

    invoke-direct {v1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lhyd;->d:Ljwb;

    sget-object v0, Ldho;->ci:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lhyd;->b:Lmqp;

    return-void

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lhyd;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;

    const/4 v1, 0x1

    if-eq v1, p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotView;->setVisibility(I)V

    :cond_1
    return-void
.end method
