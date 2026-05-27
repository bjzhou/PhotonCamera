.class public final Ldja;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldja;->b:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldja;->a:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProvider;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lbkc;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    const-class p3, Landroid/app/NotificationManager;

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldhi;Lkap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    const-string p1, "ShotFailureHdlr"

    invoke-interface {p3, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljwb;Lfbz;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {p2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Ldhf;->a:Ldhk;

    invoke-interface {p4}, Ldhi;->e()V

    invoke-static {p1}, Ldja;->f(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkbc;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;Lcvr;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lkrn;Ljava/util/Random;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    invoke-static {p2}, Ldtv;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.sensor.double_twist"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Google"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0b021d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldja;->c:Ljava/lang/Object;

    const v0, 0x7f0b021f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldja;->b:Ljava/lang/Object;

    const v0, 0x7f0b021c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientDelegate;Ligo;Lkgd;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Ljwb;Lhnb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldja;Lcvm;Lcul;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfbz;Ljvs;Lcqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgtu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ldja;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgzm;Lkgd;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lbqh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljew;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljuh;->a()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    const p2, 0x7f0b009f

    invoke-virtual {p1, p2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    const p2, 0x7f0b02a6

    invoke-virtual {p1, p2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljwb;Ljwb;Ljwb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljwy;Lklx;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkaq;Lkbc;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "HexagonEnv"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkxq;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkxq;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/lang/Runnable;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmaf;Lva;[B[B[B)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance p3, Ljvk;

    const-string p5, ""

    invoke-direct {p3, p5}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    sget-object p3, Llul;->c:Llul;

    sget-object p5, Llul;->b:Llul;

    invoke-static {p3, p5}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object p3

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    new-instance p5, Llum;

    invoke-direct {p5, p3}, Llum;-><init>(Ljava/util/Set;)V

    invoke-static {p5}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v2

    iput-object v2, p0, Ldja;->b:Ljava/lang/Object;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iget-object p3, p2, Lva;->a:Ljava/lang/Object;

    check-cast p3, Llzz;

    iget-object p3, p3, Llzz;->a:Ljava/lang/Object;

    new-instance p5, Llvq;

    const/4 v8, 0x0

    invoke-direct {p5, p2, v8, v8, v8}, Llvq;-><init>(Lva;Loku;[B[B)V

    new-instance v0, Louf;

    const/4 v9, 0x3

    invoke-direct {v0, p3, p5, v9}, Louf;-><init>(Lott;Lomo;I)V

    iget-object p2, p2, Lva;->b:Ljava/lang/Object;

    sget-object p3, Loqf;->b:Lopq;

    check-cast p2, Lmqp;

    invoke-virtual {p2, p3}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lola;

    invoke-static {p2}, Lopx;->f(Lola;)Lopu;

    move-result-object p2

    new-instance p3, Loty;

    invoke-direct {p3, v0, v8}, Loty;-><init>(Lott;Loku;)V

    invoke-static {p2, v8, p3, v9}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {p4}, Lmoz;->e(Z)V

    invoke-static {p2}, Lmoz;->e(Z)V

    sget-object v3, Llve;->a:Ljava/util/List;

    new-instance v5, Lcom;

    invoke-direct {v5}, Lcom;-><init>()V

    sget-object v4, Lcom;->a:Lcom;

    move-object p2, p1

    check-cast p2, Lmaf;

    iget-object p2, p1, Lmaf;->a:Ljava/lang/Object;

    invoke-interface {p2}, Loja;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lopu;

    new-instance p3, Llvp;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Llvp;-><init>(Lmaf;Ljava/util/Set;Ljava/util/List;Llvm;Llvm;Loku;[B)V

    invoke-static {p2, v8, p3, v9}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void
.end method

.method public constructor <init>(Lmqp;Ldhi;Lcqv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    iput-object p3, p0, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Ldja;->a:Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Ldja;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ldja;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ldja;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Ldja;->c:Ljava/lang/Object;

    return-void
.end method

.method private static H(Landroid/content/Context;)Lehi;
    .locals 1

    instance-of v0, p0, Lehh;

    if-eqz v0, :cond_0

    check-cast p0, Lehh;

    invoke-interface {p0}, Lehh;->d()Lehi;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ldja;->H(Landroid/content/Context;)Lehi;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context does not provide a Hexagon path."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final I(Lkll;Ljws;)Ljava/util/List;
    .locals 8

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {}, Ljxi;->values()[Ljxi;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, Ljxi;->l:Ljwu;

    iget-object v6, p1, Lkll;->a:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget v7, v4, Ljxi;->k:I

    invoke-static {v6, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {p1, v4}, Ljyx;->g(Lkll;Ljxi;)Ljxl;

    move-result-object v4

    iget-object v6, p0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v6, v4, p2, v5}, Ljwy;->e(Ljxl;Ljws;Ljwu;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private final J()Z
    .locals 2

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->bt:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "/ff.pb"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "/ff.pb_tmp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static y()Ljfg;
    .locals 1

    new-instance v0, Ljfg;

    invoke-direct {v0}, Ljfg;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 9

    invoke-virtual {p0}, Ldja;->z()Landroid/app/NotificationChannel;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    const v2, 0x7f140571

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f080241

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f060971

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const v4, 0x7f140570

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Ldja;->a:Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.apps.betterbug.intent.FILE_BUG_DEEPLINK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_DEEPLINK"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "EXTRA_ISSUE_TITLE"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "EXTRA_COMPONENT_ID"

    const-wide/32 v7, 0xa833

    invoke-virtual {v0, v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v7, "EXTRA_HAPPENED_TIME"

    invoke-virtual {v0, v7, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "EXTRA_REQUIRE_BUGREPORT"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    check-cast v3, Lbkc;

    iget-object v3, v3, Lbkc;->a:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x44000000    # 512.0f

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    check-cast v0, Landroid/app/NotificationManager;

    const v2, 0x1123f

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public final B()Z
    .locals 2

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->bs:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldja;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lhnb;->e()Lhna;

    move-result-object v0

    sget-object v1, Lhna;->f:Lhna;

    invoke-virtual {v0, v1}, Lhna;->a(Lhna;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->br:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ldja;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()V
    .locals 2

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    return-void
.end method

.method public final E(Landroid/hardware/SensorEventListener;)V
    .locals 9

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    new-instance v8, Lgps;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lgps;-><init>(Ldja;Landroid/hardware/SensorEventListener;I[B[B[B)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final F(Landroid/hardware/SensorEventListener;)V
    .locals 9

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    new-instance v8, Lgps;

    const/16 v4, 0x8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lgps;-><init>(Ldja;Landroid/hardware/SensorEventListener;I[B[B[B)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final G()Lgme;
    .locals 4

    new-instance v0, Lgme;

    iget-object v1, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v2, Lijz;

    invoke-virtual {v2}, Lijz;->a()Lika;

    move-result-object v2

    iget-object v3, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v3, Lfwo;

    invoke-virtual {v3}, Lfwo;->a()Lfuz;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lgme;-><init>(Ldhi;Lika;Lfuz;)V

    return-object v0
.end method

.method public final a(Ldof;)V
    .locals 2

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    const-string v1, "Shot Exception!"

    invoke-static {v1, p1}, Lcom/Globals;->getThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1, p1}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1}, Lchn;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    iget-object p1, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    const-string v1, "pref_key_reboot_completed"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    new-instance v3, Lczl;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lczl;-><init>(Ldja;I[B)V

    move-object v4, v0

    check-cast v4, Lapt;

    invoke-virtual {v4}, Lapt;->m()V

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    check-cast v0, Lapt;

    invoke-virtual {v0}, Lapt;->q()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Lapt;->o()V

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Lapt;->o()V

    throw v0

    :cond_0
    return-void
.end method

.method public final c(Lcsc;)Z
    .locals 4

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ldja;->d()V

    iget-object v0, p1, Lcsc;->x:Lklv;

    sget-object v1, Lklv;->b:Lklv;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lcqv;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcsc;->d:Ljwu;

    iget-object p1, p1, Lcsc;->c:Ljws;

    iget-object v1, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v2, Ldgu;->I:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/16 v2, 0x3c

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljwu;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Ljws;->i:I

    if-eq v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v3, Ldgu;->ah:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljwu;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Ljws;->i:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->d()V

    return-void
.end method

.method public final e()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    const-string v1, "Loading libhalide_hexagon_host.so."

    invoke-interface {v0, v1}, Lkaq;->f(Ljava/lang/String;)V

    const-string v0, "halide_hexagon_host"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Ldja;->H(Landroid/content/Context;)Lehi;

    move-result-object v0

    iget-object v0, v0, Lehi;->a:Ljava/lang/String;

    iget-object v1, p0, Ldja;->b:Ljava/lang/Object;

    const-string v2, "HexagonEnvironment#copyHexagonRemoteToDisk"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    const-string v1, "/libhalide_hexagon_remote_skel.so"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldja;->c:Ljava/lang/Object;

    const-string v2, "Writing libhalide_hexagon_remote_skel_signed_by_testsig.so to "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Ldja;->c:Ljava/lang/Object;

    const-string v2, "Failed to load Hexagon library"

    invoke-interface {v1, v2, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :goto_1
    iget-object v1, p0, Ldja;->c:Ljava/lang/Object;

    const-string v2, "Error initializing Hexagon"

    invoke-interface {v1, v2, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "sensor"

    iget-object v1, p0, Ldja;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Ldtv;->c(Ljava/lang/String;Ljava/util/Collection;)V

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldtu;

    invoke-virtual {v1}, Ldtu;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ldtu;->f()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v1, v5}, Ldtu;->h(Landroid/hardware/Sensor;)V

    new-instance v6, Ldus;

    const/4 v2, 0x0

    invoke-direct {v6, v1, v2}, Ldus;-><init>(Ldtu;I)V

    iget-object v2, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v6, v5, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v11, p0, Ldja;->b:Ljava/lang/Object;

    new-instance v12, Lapv;

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v12

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v9}, Lapv;-><init>(Ldja;Ldtu;Landroid/hardware/Sensor;Landroid/hardware/SensorEventListener;I[B[B)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized h()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final j()I
    .locals 1

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method public final l(Lklv;)Ljwu;
    .locals 4

    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_0

    sget-object v0, Ldgu;->f:Ldhk;

    goto :goto_0

    :cond_0
    sget-object v0, Ldgu;->g:Ldhk;

    :goto_0
    iget-object v1, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Ldhj;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for ADB flag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not supported."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    sget-object p1, Ljwu;->k:Ljwu;

    return-object p1

    :sswitch_1
    sget-object p1, Ljwu;->i:Ljwu;

    return-object p1

    :sswitch_2
    sget-object p1, Ljwu;->g:Ljwu;

    return-object p1

    :sswitch_3
    sget-object p1, Ljwu;->f:Ljwu;

    return-object p1

    :sswitch_4
    sget-object p1, Ljwu;->d:Ljwu;

    return-object p1

    :sswitch_5
    sget-object p1, Ljwu;->c:Ljwu;

    return-object p1

    :sswitch_6
    sget-object p1, Ljwu;->b:Ljwu;

    return-object p1

    :cond_1
    sget-object v0, Lklv;->a:Lklv;

    if-ne p1, v0, :cond_2

    sget-object p1, Ljwu;->i:Ljwu;

    return-object p1

    :cond_2
    iget-object p1, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v0, Lgzd;->D:Lgzr;

    invoke-interface {p1, v0}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Ljwu;->k:Ljwu;

    goto :goto_1

    :cond_3
    sget-object p1, Ljwu;->i:Ljwu;

    :goto_1
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x90 -> :sswitch_6
        0xf0 -> :sswitch_5
        0x120 -> :sswitch_4
        0x1e0 -> :sswitch_3
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_1
        0x870 -> :sswitch_0
    .end sparse-switch
.end method

.method public final m(Landroid/content/Context;Lklv;)Z
    .locals 1

    sget-object v0, Lklv;->b:Lklv;

    invoke-virtual {p2, v0}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p2, p0, Ldja;->a:Ljava/lang/Object;

    sget-object v0, Ldho;->bV:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p2}, Ljji;->k(Landroid/content/Context;Landroid/view/Display;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    const/16 p2, 0x258

    if-ge p1, p2, :cond_1

    iget-object p1, p0, Ldja;->a:Ljava/lang/Object;

    sget-object p2, Ldgu;->ai:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    iget-object p1, p0, Ldja;->a:Ljava/lang/Object;

    sget-object p2, Ldgu;->ai:Ldhj;

    invoke-interface {p1, p2}, Ldhi;->l(Ldhj;)Z

    move-result p1

    return p1
.end method

.method public final n()Z
    .locals 3

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    sget-object v1, Ldgu;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v1, Lgzd;->B:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    sget-object v2, Ldgu;->o:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Lkgd;

    invoke-virtual {v0}, Lkgd;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public final o()Z
    .locals 2

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    sget-object v1, Lgzd;->A:Lgzr;

    invoke-interface {v0, v1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    sget-object v1, Ldgu;->r:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->k(Ldhj;)Z

    move-result v0

    return v0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x2710

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Ldja;->c:Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " IN (SELECT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ASC LIMIT "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 1

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ldja;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final s(Lkll;)Ldne;
    .locals 12

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldne;

    return-object p1

    :cond_0
    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Lklx;

    invoke-virtual {v0, p1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Ljws;->c:Ljws;

    sget-object v3, Ljws;->c:Ljws;

    invoke-direct {p0, p1, v3}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljws;->d:Ljws;

    invoke-direct {p0, p1, v2}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljws;->a:Ljws;

    invoke-direct {p0, p1, v2}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljws;->b:Ljws;

    invoke-direct {p0, p1, v2}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljws;->f:Ljws;

    invoke-direct {p0, p1, v2}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Ljws;->e:Ljws;

    invoke-direct {p0, p1, v2}, Ldja;->I(Lkll;Ljws;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljws;->c()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljws;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lklw;->L()Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lklw;->w()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkaf;

    sget-object v6, Ljwu;->m:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljwu;

    if-eqz v5, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljwu;

    invoke-static {v4}, Ljxg;->a(Ljwu;)Ljxg;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {p1, v5}, Ljyx;->e(Lkll;Ljxg;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljwu;->b()Lkaf;

    move-result-object v6

    invoke-virtual {v0, v6}, Lklw;->v(Lkaf;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljws;->c()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljws;

    invoke-static {p1, v5}, Ljyx;->e(Lkll;Ljxg;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {p1, v5}, Ljyx;->f(Lkll;Ljxg;)Ljxl;

    move-result-object v9

    iget-object v10, p0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v10, v9, v8, v4}, Ljwy;->e(Ljxl;Ljws;Ljwu;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Range;

    iget v11, v8, Ljws;->i:I

    invoke-virtual {v10}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v11, v10, :cond_6

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-static {}, Ljxg;->values()[Ljxg;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_9

    aget-object v6, v3, v5

    invoke-static {p1, v6}, Ljyx;->e(Lkll;Ljxg;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p1, v6}, Ljyx;->f(Lkll;Ljxg;)Ljxl;

    move-result-object v6

    iget v6, v6, Ljxl;->l:I

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    sget-object v3, Ljws;->h:Ljws;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_4
    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljws;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Lye;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Lye;-><init>(I)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5

    :cond_b
    new-instance v2, Ldne;

    invoke-direct {v2, v0, v1}, Ldne;-><init>(Lfuz;Ljava/util/Map;)V

    iget-object v0, p0, Ldja;->a:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public final t()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLEngineApi;->getHostApiVersion()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    sget-object v0, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->ORIGINAL:Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;

    invoke-virtual {v0}, Lcom/google/android/libraries/lens/lenslite/dynamicloading/ApiVersion;->getVersionCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final u()Lkad;
    .locals 1

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->Y()Lkad;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized v(Ljava/util/Set;)Lnou;
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ldja;->u()Lkad;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lkft;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3}, Lkft;-><init>(Ldja;[B[B)V

    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkgq;

    iget-object v6, v5, Lkgq;->a:Lmwn;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkjt;

    iget-object v11, v0, Lkft;->b:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, v0, Lkft;->d:Ldja;

    iget-object v11, v11, Ldja;->c:Ljava/lang/Object;

    move-object v12, v11

    check-cast v12, Ligo;

    invoke-virtual {v12, v7}, Ligo;->u(Lkjt;)Lknb;

    move-result-object v12

    if-nez v12, :cond_1

    iget-object v13, v7, Lkjt;->e:Lkgd;

    iget-object v13, v13, Lkgd;->a:Ljava/lang/Object;

    check-cast v13, Landroidx/wear/ambient/AmbientDelegate;

    const-wide/16 v14, 0x1

    invoke-virtual {v13, v14, v15}, Landroidx/wear/ambient/AmbientDelegate;->ab(J)Lnou;

    move-result-object v13

    goto :goto_2

    :cond_1
    move-object v13, v3

    :goto_2
    iget-wide v14, v7, Lkjt;->c:J

    cmp-long v16, v14, v8

    if-lez v16, :cond_2

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    invoke-static {v10}, Llkj;->x(Z)V

    iget-wide v8, v7, Lkjt;->c:J

    move-object v10, v11

    check-cast v10, Ligo;

    invoke-virtual {v10, v8, v9}, Ligo;->t(J)Lknb;

    move-result-object v8

    if-nez v8, :cond_3

    check-cast v11, Ligo;

    iget-object v9, v11, Ligo;->a:Ljava/lang/Object;

    iget-wide v10, v7, Lkjt;->c:J

    check-cast v9, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v9, v10, v11}, Landroidx/wear/ambient/AmbientDelegate;->ab(J)Lnou;

    move-result-object v9

    goto :goto_4

    :cond_3
    move-object v9, v3

    :goto_4
    if-eqz v12, :cond_4

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Lkjt;->i()Z

    move-result v9

    invoke-static {v8, v12, v9}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object v8

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v8

    goto :goto_5

    :cond_4
    if-nez v13, :cond_5

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v13

    :cond_5
    if-nez v9, :cond_6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v9

    :cond_6
    new-instance v8, Lkhq;

    invoke-direct {v8, v7}, Lkhq;-><init>(Lkjt;)V

    invoke-static {v13, v9, v8}, Ljvd;->q(Lnou;Lnou;Ljzv;)Lnou;

    move-result-object v8

    :goto_5
    new-instance v9, Lhga;

    const/16 v10, 0xa

    invoke-direct {v9, v7, v10}, Lhga;-><init>(Lkjt;I)V

    sget-object v10, Lnnv;->a:Lnnv;

    invoke-static {v8, v9, v10}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v8

    iget-object v9, v0, Lkft;->a:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v8, v0, Lkft;->b:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    iget-object v6, v5, Lkgq;->b:Lmwn;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkju;

    iget-object v11, v0, Lkft;->b:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    iget-wide v11, v7, Lkju;->b:J

    cmp-long v13, v11, v8

    if-lez v13, :cond_a

    iget-object v11, v0, Lkft;->d:Ldja;

    iget-object v11, v11, Ldja;->c:Ljava/lang/Object;

    invoke-static {v10}, Llkj;->x(Z)V

    iget-wide v12, v7, Lkju;->b:J

    move-object v14, v11

    check-cast v14, Ligo;

    invoke-virtual {v14, v12, v13}, Ligo;->t(J)Lknb;

    move-result-object v12

    if-nez v12, :cond_9

    check-cast v11, Ligo;

    iget-object v11, v11, Ligo;->a:Ljava/lang/Object;

    iget-wide v12, v7, Lkju;->b:J

    check-cast v11, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v11, v12, v13}, Landroidx/wear/ambient/AmbientDelegate;->ab(J)Lnou;

    move-result-object v11

    new-instance v12, Lhop;

    const/16 v13, 0x9

    invoke-direct {v12, v13}, Lhop;-><init>(I)V

    sget-object v13, Lnnv;->a:Lnnv;

    invoke-static {v11, v12, v13}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v11

    goto :goto_7

    :cond_9
    invoke-static {v12, v3, v10}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object v11

    invoke-static {v11}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v11

    :goto_7
    new-instance v12, Lhga;

    const/16 v13, 0xb

    invoke-direct {v12, v7, v13}, Lhga;-><init>(Lkju;I)V

    sget-object v13, Lnnv;->a:Lnnv;

    invoke-static {v11, v12, v13}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v11

    iget-object v12, v0, Lkft;->a:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    iget-object v11, v0, Lkft;->a:Ljava/util/List;

    invoke-static {v7}, Lkjv;->g(Lkfj;)Lkkf;

    move-result-object v12

    invoke-static {v12}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    iget-object v11, v0, Lkft;->b:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    iget-object v6, v0, Lkft;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    iget-object v3, v0, Lkft;->a:Ljava/util/List;

    invoke-static {v3}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v3

    new-instance v4, Lhga;

    const/16 v5, 0xc

    invoke-direct {v4, v0, v5}, Lhga;-><init>(Lkft;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v3, v4, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljuf;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v2}, Ljuf;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v3, v2}, Lkkk;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public final declared-synchronized w(Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lmza;->a:Lmza;

    invoke-virtual {p0, p1, v0}, Ldja;->x(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized x(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ldja;->u()Lkad;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkgs;

    iget-object v9, v7, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkkf;

    invoke-interface {v10}, Lkkf;->d()Lkfj;

    move-result-object v11

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lmoz;->e(Z)V

    goto :goto_1

    :cond_1
    iget-object v9, v7, Lkgs;->c:Lkgq;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v8, v10

    invoke-static {v8}, Lmoz;->p(Z)V

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkgq;

    invoke-interface {v4, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v7, Lkgq;->a:Lmwn;

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkjt;

    invoke-interface {v5, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    iget-object v15, v12, Lkjt;->e:Lkgd;

    invoke-virtual {v15}, Lkgd;->r()Lkad;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljuf;->d(Lkad;)V

    iget-object v15, v1, Ldja;->c:Ljava/lang/Object;

    move-object v9, v15

    check-cast v9, Ligo;

    invoke-virtual {v9, v12}, Ligo;->u(Lkjt;)Lknb;

    move-result-object v9

    if-nez v9, :cond_3

    const/4 v8, 0x0

    goto :goto_5

    :cond_3
    move-object/from16 v17, v9

    iget-wide v8, v12, Lkjt;->c:J

    cmp-long v18, v8, v13

    if-lez v18, :cond_4

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    invoke-static {v8}, Llkj;->x(Z)V

    iget-wide v8, v12, Lkjt;->c:J

    move-object v13, v15

    check-cast v13, Ligo;

    invoke-virtual {v13, v8, v9}, Ligo;->t(J)Lknb;

    move-result-object v8

    if-nez v8, :cond_5

    invoke-virtual {v12}, Lkjt;->i()Z

    move-result v9

    if-eqz v9, :cond_5

    check-cast v15, Ligo;

    iget-object v8, v15, Ligo;->a:Ljava/lang/Object;

    iget-wide v13, v12, Lkjt;->c:J

    check-cast v8, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v8, v13, v14}, Landroidx/wear/ambient/AmbientDelegate;->Z(J)Lknb;

    move-result-object v8

    :cond_5
    if-nez v8, :cond_6

    invoke-virtual/range {v17 .. v17}, Lknb;->close()V

    const/4 v8, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {v12}, Lkjt;->i()Z

    move-result v9

    move-object/from16 v13, v17

    invoke-static {v8, v13, v9}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object v8

    :goto_5
    if-nez v8, :cond_7

    goto :goto_8

    :cond_7
    invoke-static {v12, v8}, Lkka;->e(Lkfj;Lkkh;)Lkkf;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    goto :goto_3

    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    iget-object v7, v7, Lkgq;->b:Lmwn;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkju;

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-wide v11, v8, Lkju;->b:J

    cmp-long v9, v11, v13

    if-lez v9, :cond_d

    iget-object v9, v1, Ldja;->c:Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-static {v11}, Lmoz;->e(Z)V

    iget-wide v11, v8, Lkju;->b:J

    check-cast v9, Ligo;

    invoke-virtual {v9, v11, v12}, Ligo;->t(J)Lknb;

    move-result-object v9

    if-nez v9, :cond_a

    const/4 v9, 0x0

    const/4 v11, 0x0

    goto :goto_7

    :cond_a
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lkkh;->f(Lknb;Lknb;Z)Lkkh;

    move-result-object v9

    :goto_7
    if-eqz v9, :cond_b

    invoke-static {v8, v9}, Lkjv;->e(Lkfj;Lkkh;)Lkkf;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    :goto_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v7, :cond_11

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkkf;

    invoke-interface {v8}, Lkkf;->a()Lkad;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-interface {v8}, Lkad;->close()V

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v11, 0x0

    invoke-static {v8}, Lkjv;->g(Lkfj;)Lkkf;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    const/4 v11, 0x0

    goto :goto_6

    :cond_f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    const/4 v15, 0x0

    :goto_a
    if-ge v15, v7, :cond_10

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkkf;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    xor-int/2addr v9, v11

    invoke-static {v9}, Lmoz;->p(Z)V

    invoke-interface {v8}, Lkkf;->d()Lkfj;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_10
    const/4 v11, 0x1

    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_12
    const/4 v11, 0x1

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_13
    const/4 v11, 0x0

    iget-object v5, v1, Ldja;->a:Ljava/lang/Object;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkkf;

    invoke-interface {v7}, Lkkf;->d()Lkfj;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_14
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkgq;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v9, v11

    :cond_15
    :goto_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkgs;

    iget-object v12, v10, Lkgs;->c:Lkgq;

    if-ne v12, v7, :cond_15

    move-object v9, v10

    goto :goto_d

    :cond_16
    if-eqz v9, :cond_17

    invoke-virtual {v0, v9}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_c

    :cond_17
    invoke-static {}, Lmwn;->D()Lmwl;

    move-result-object v8

    iget-object v9, v7, Lkgq;->c:Lmwn;

    invoke-virtual {v9}, Lmwn;->cz()Lnac;

    move-result-object v9

    :goto_e
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lkfj;

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkkf;

    if-nez v12, :cond_19

    instance-of v12, v10, Lkjt;

    if-eqz v12, :cond_18

    invoke-static {}, Lkkh;->g()Lkkh;

    move-result-object v12

    new-instance v13, Lkka;

    invoke-direct {v13, v10, v12}, Lkka;-><init>(Lkfj;Lkkh;)V

    invoke-virtual {v12, v13}, Lkkh;->e(Lkad;)V

    move-object v12, v13

    goto :goto_f

    :cond_18
    instance-of v12, v10, Lkju;

    invoke-static {v12}, Llkj;->x(Z)V

    invoke-static {v10}, Lkjv;->f(Lkfj;)Lkkf;

    move-result-object v12

    :goto_f
    invoke-interface {v6, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v8, v12}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_e

    :cond_1a
    invoke-virtual {v8}, Lmwl;->f()Lmwn;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Lkgd;

    invoke-static {v9, v7, v8}, Lkgs;->p(Lkgd;Lkgq;Ljava/util/Set;)Lkgs;

    move-result-object v7

    invoke-virtual {v0, v7}, Lmwl;->g(Ljava/lang/Object;)V

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Lmwl;->f()Lmwn;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljuf;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v2}, Ljuf;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_4
    invoke-static {v3, v2}, Lkkk;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_10
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method public final z()Landroid/app/NotificationChannel;
    .locals 4

    iget-object v0, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/NotificationManager;

    const-string v1, "Sideline"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Ldja;->c:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    const v3, 0x7f140369

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, Ldja;->b:Ljava/lang/Object;

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-object v0
.end method
