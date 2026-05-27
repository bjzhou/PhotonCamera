.class public final Ligq;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field private static i:I


# instance fields
.field public final a:Lkaq;

.field public final b:Landroid/view/SurfaceView;

.field public final c:Lmqp;

.field public final d:Lkbc;

.field public final e:Lihb;

.field public f:Z

.field public g:Lnph;

.field public final h:Lhkh;

.field private final j:Landroid/widget/FrameLayout;

.field private final k:Landroid/view/SurfaceHolder$Callback2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ligq;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkap;Lihg;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lhkc;Lihb;Ldhi;Lkbc;Lmqp;Ligr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ligq;->f:Z

    iget-object p3, p3, Lihg;->d:Ljava/lang/Object;

    check-cast p3, Landroid/widget/FrameLayout;

    iput-object p3, p0, Ligq;->j:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/SurfaceView;

    invoke-direct {v0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ligq;->b:Landroid/view/SurfaceView;

    iput-object p6, p0, Ligq;->e:Lihb;

    iput-object p8, p0, Ligq;->d:Lkbc;

    invoke-interface {p5}, Lhkc;->a()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lhkh;

    iput-object p5, p0, Ligq;->h:Lhkh;

    iput-object p9, p0, Ligq;->c:Lmqp;

    sget p5, Ligq;->i:I

    add-int/lit8 p8, p5, 0x1

    sput p8, Ligq;->i:I

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "ViewfinderSV"

    invoke-virtual {p8, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p5}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p2

    iput-object p2, p0, Ligq;->a:Lkaq;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    iget-object p5, p6, Lihb;->c:Lmqp;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p5

    iput-object p5, p0, Ligq;->g:Lnph;

    new-instance p5, Ligp;

    invoke-direct {p5, p0}, Ligp;-><init>(Ligq;)V

    iput-object p5, p0, Ligq;->k:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {p2, p5}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-interface {p2, p10}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p5, p6, Lihb;->a:Lkaf;

    iget p8, p5, Lkaf;->a:I

    iget p5, p5, Lkaf;->b:I

    invoke-interface {p2, p8, p5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    sget-object p2, Ldho;->bq:Ldhj;

    invoke-interface {p7, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p6, Lihb;->b:Ljzr;

    sget-object p5, Ljzr;->b:Ljzr;

    invoke-virtual {p2, p5}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080422

    const/4 p5, 0x0

    invoke-virtual {p1, p2, p5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setClipToOutline(Z)V

    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p3, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p1, Lhju;->j:Lhju;

    sget-object p2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lhkg;

    invoke-virtual {p4, p1, p2}, Lhkh;->i(Ljava/lang/Enum;Lhkg;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Ligq;->g:Lnph;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnph;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ligq;->a:Lkaq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Previous request exists, returning exception. Reason: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, p0, Ligq;->g:Lnph;

    new-instance v1, Lkdf;

    invoke-direct {v1, p1}, Lkdf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnph;->a(Ljava/lang/Throwable;)Z

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 2

    invoke-static {}, Ljuh;->a()V

    const-string v0, "Closed"

    invoke-virtual {p0, v0}, Ligq;->a(Ljava/lang/String;)V

    iget-object v0, p0, Ligq;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Ligq;->k:Landroid/view/SurfaceHolder$Callback2;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Ligq;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Ligq;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ligq;->f:Z

    return-void
.end method
