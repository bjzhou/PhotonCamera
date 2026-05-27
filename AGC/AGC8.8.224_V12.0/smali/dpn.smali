.class public final Ldpn;
.super Ljava/lang/Object;

# interfaces
.implements Ldqq;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:I

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:J

.field public final e:Z

.field private final f:Lfwx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/facebeautification/CpuFaceBeautificationController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldpn;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lkog;Lfwx;Ljava/util/concurrent/Executor;ILdhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldpn;->f:Lfwx;

    iput-object p3, p0, Ldpn;->c:Ljava/util/concurrent/Executor;

    iput p4, p0, Ldpn;->b:I

    sget-object p2, Ldhc;->j:Ldhj;

    invoke-interface {p5, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    iput-boolean p2, p0, Ldpn;->e:Z

    invoke-virtual {p1}, Lkog;->c()Z

    move-result p3

    const/4 p5, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lkog;->d()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lkog;->isPixel2018()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lkog;->f()Z

    move-result p3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lkog;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {p5, p4, p2}, Lcom/google/android/apps/camera/jni/facebeautification/FaceBeautificationNative;->createHandle(IIZ)J

    move-result-wide p1

    iput-wide p1, p0, Ldpn;->d:J

    return-void
.end method


# virtual methods
.method public final a(Lcvm;)Lnou;
    .locals 4

    iget-object v0, p1, Lcvm;->b:Ljava/lang/Object;

    check-cast v0, Lgyq;

    invoke-virtual {v0}, Lgyq;->b()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ldqd;

    iget-object p1, p1, Lcvm;->d:Ljava/lang/Object;

    invoke-direct {v0, p1}, Ldqd;-><init>(Lkpb;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Ldpn;->f:Lfwx;

    new-instance v1, Ldqf;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v2, v3}, Ldqf;-><init>(Ldpn;Lcvm;I[B)V

    invoke-virtual {v0, v1}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Ldpn;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Ldgg;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2}, Ldgg;-><init>(Ldpn;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
