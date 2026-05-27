.class public final Lhwu;
.super Ljava/lang/Object;

# interfaces
.implements Lfaz;
.implements Lfaq;
.implements Lfav;
.implements Lfat;


# static fields
.field public static final a:[J


# instance fields
.field public final b:Lfbz;

.field private c:Landroid/hardware/SensorEventListener;

.field private d:Z

.field private e:Z

.field private f:Z

.field private final g:Ljew;

.field private final h:Ldja;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lhwu;->a:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x96
        0x4b
        0x96
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/camera/bottombar/BottomBarController;Ldja;Lfbz;[B[B[B)V
    .locals 0

    new-instance p5, Ljew;

    const/4 p6, 0x0

    invoke-direct {p5, p1, p6}, Ljew;-><init>(Landroid/content/Context;[B)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p6, 0x1

    iput-boolean p6, p0, Lhwu;->f:Z

    iput-object p3, p0, Lhwu;->h:Ldja;

    iput-object p5, p0, Lhwu;->g:Ljew;

    invoke-virtual {p5}, Ljew;->J()Z

    move-result p3

    iput-boolean p3, p0, Lhwu;->e:Z

    const-string p3, "vibrator"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    new-instance p3, Lhwt;

    invoke-direct {p3, p0, p1, p2}, Lhwt;-><init>(Lhwu;Landroid/os/Vibrator;Lcom/google/android/apps/camera/bottombar/BottomBarController;)V

    iput-object p3, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    iput-object p4, p0, Lhwu;->b:Lfbz;

    return-void
.end method


# virtual methods
.method public final bK()V
    .locals 2

    iget-object v0, p0, Lhwu;->h:Ldja;

    iget-object v1, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Ldja;->E(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method public final bM()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwu;->f:Z

    iget-boolean v0, p0, Lhwu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwu;->h:Ldja;

    iget-object v1, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Ldja;->E(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public final bN()V
    .locals 2

    iget-object v0, p0, Lhwu;->g:Ljew;

    invoke-virtual {v0}, Ljew;->J()Z

    move-result v0

    iput-boolean v0, p0, Lhwu;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lhwu;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhwu;->h:Ldja;

    iget-object v1, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Ldja;->F(Landroid/hardware/SensorEventListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhwu;->f:Z

    return-void
.end method

.method public final d(Z)V
    .locals 1

    iput-boolean p1, p0, Lhwu;->d:Z

    iget-boolean v0, p0, Lhwu;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lhwu;->e:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhwu;->h:Ldja;

    iget-object v0, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Ldja;->F(Landroid/hardware/SensorEventListener;)V

    return-void

    :cond_1
    iget-object p1, p0, Lhwu;->h:Ldja;

    iget-object v0, p0, Lhwu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, v0}, Ldja;->E(Landroid/hardware/SensorEventListener;)V

    return-void
.end method
