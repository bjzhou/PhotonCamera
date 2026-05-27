.class public final Landroidx/wear/ambient/AmbientDelegate;
.super Ljava/lang/Object;


# static fields
.field static d:Ljava/lang/Integer;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmrj;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lmrj;-><init>([B[B)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    new-instance v0, Lmrj;

    invoke-direct {v0, v1, v1}, Lmrj;-><init>([B[B)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    const/16 v0, 0x20

    new-array v0, v0, [Lyh;

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lakv;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laks;

    invoke-direct {v0, p1}, Laks;-><init>(Lakv;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbkc;Ldhi;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldol;Loiw;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lloz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Landroidx/wear/ambient/AmbientDelegate;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljvs;Lebi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkgh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lkgh;->a()Lkhs;

    move-result-object v0

    invoke-virtual {v0}, Lkhs;->d()Lkht;

    move-result-object v0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lknc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    new-instance v0, Ljwf;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lknc;->g:Ljwc;

    invoke-direct {v0, v1, p1}, Ljwf;-><init>(Ljava/lang/Object;Ljwc;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkpo;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lsj;Lopu;Lotj;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    new-instance p1, Lvr;

    new-instance v0, Lawi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p3, p0, v1, v2}, Lawi;-><init>(Lotj;Landroidx/wear/ambient/AmbientDelegate;I[B)V

    invoke-direct {p1, p2, v0}, Lvr;-><init>(Lopu;Lolz;)V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    new-instance p1, Luo;

    invoke-direct {p1, p0, v2, v2}, Luo;-><init>(Landroidx/wear/ambient/AmbientDelegate;Loku;[B)V

    const/4 p3, 0x3

    invoke-static {p2, v2, p1, p3}, Lone;->j(Lopu;Lola;Lomo;I)Lora;

    return-void
.end method

.method public constructor <init>(ZLloz;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Ljava/lang/Object;Lloz;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lend;

    invoke-direct {p1}, Lend;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    new-instance p1, Lend;

    invoke-direct {p1}, Lend;-><init>()V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    const/16 p1, 0x20

    new-array p1, p1, [Lal;

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    return-void
.end method

.method public static B(Landroid/content/Context;I[I)Landroidx/wear/ambient/AmbientDelegate;
    .locals 1

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static C(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/wear/ambient/AmbientDelegate;
    .locals 1

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static D(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;
    .locals 1

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    return-object v0
.end method

.method public static final J(Lkht;)Ljava/util/Set;
    .locals 9

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lkht;->d()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lkht;->b()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v3

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lkht;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lkht;->c()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v5

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0}, Lkht;->e()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v6

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lkht;->b:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v7

    const/4 v0, 0x4

    new-array v8, v0, [Lkfa;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lkht;->c:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v8, v1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lkht;->d:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, v1}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v8, v1

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p0, p0, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {v0, p0}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object p0

    const/4 v0, 0x3

    aput-object p0, v8, v0

    invoke-static/range {v2 .. v8}, Lmwn;->M(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lmwn;

    move-result-object p0

    return-object p0
.end method

.method public static final K(Lkfy;Lkht;)V
    .locals 0

    invoke-static {p1}, Landroidx/wear/ambient/AmbientDelegate;->J(Lkht;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkfy;->e(Ljava/util/Set;)V

    return-void
.end method

.method public static final V(II)Z
    .locals 0

    invoke-static {p0}, Landroidx/wear/ambient/AmbientDelegate;->af(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroidx/wear/ambient/AmbientDelegate;->af(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ad(Lknc;)Landroidx/wear/ambient/AmbientDelegate;
    .locals 1

    new-instance v0, Landroidx/wear/ambient/AmbientDelegate;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientDelegate;-><init>(Lknc;)V

    return-object v0
.end method

.method private final ae(III)I
    .locals 1

    sub-int v0, p2, p3

    if-lez v0, :cond_0

    return v0

    :cond_0
    sub-int/2addr p1, p3

    if-lez p1, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, -0x2

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroidx/wear/ambient/AmbientDelegate;->d:Ljava/lang/Integer;

    if-nez p2, :cond_2

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget p1, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sput-object p1, Landroidx/wear/ambient/AmbientDelegate;->d:Ljava/lang/Integer;

    :cond_2
    sget-object p1, Landroidx/wear/ambient/AmbientDelegate;->d:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private static final af(I)Z
    .locals 1

    if-gtz p0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A(I)Z
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    return p1
.end method

.method public final E()Lkad;
    .locals 3

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    new-instance v1, Lirx;

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v2, 0x6

    invoke-direct {v1, v0, v2}, Lirx;-><init>(Ljava/util/concurrent/locks/ReentrantLock;I)V

    return-object v1
.end method

.method public final F()Lkhs;
    .locals 4

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    invoke-static {v1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v1

    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lkht;

    iget-object v3, v3, Lkht;->a:Ljava/lang/Boolean;

    iput-object v3, v1, Lkhs;->f:Ljava/lang/Boolean;

    move-object v3, v2

    check-cast v3, Lkht;

    iget-object v3, v3, Lkht;->b:Ljava/lang/Boolean;

    iput-object v3, v1, Lkhs;->g:Ljava/lang/Boolean;

    check-cast v2, Lkht;

    iget-object v2, v2, Lkht;->c:Ljava/lang/Boolean;

    iput-object v2, v1, Lkhs;->h:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lkad;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Lkof;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public final G()Lkht;
    .locals 2

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Lkad;->close()V

    check-cast v1, Lkht;

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Lkof;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public final H(Lkht;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0

    :try_start_0
    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p2, Lkgh;

    invoke-virtual {p2, p1}, Lkgh;->c(Lkht;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lkof;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final I(ZZZZ)V
    .locals 2

    invoke-virtual {p0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    check-cast v1, Lkht;

    invoke-static {v1}, Lkhs;->c(Lkht;)Lkhs;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lkhs;->f:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v1, Lkhs;->g:Ljava/lang/Boolean;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, v1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    iput-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz p4, :cond_0

    iget-object p4, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    move-object v1, p4

    check-cast v1, Lkgh;

    invoke-virtual {v1}, Lkgh;->a()Lkhs;

    move-result-object v1

    iput-object p1, v1, Lkhs;->f:Ljava/lang/Boolean;

    iput-object p2, v1, Lkhs;->g:Ljava/lang/Boolean;

    iput-object p3, v1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object p1

    check-cast p4, Lkgh;

    invoke-virtual {p4, p1}, Lkgh;->c(Lkht;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-interface {v0}, Lkad;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    invoke-static {p1, p2}, Lkof;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method

.method public final declared-synchronized L()Lmwn;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M(Ljava/lang/Runnable;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Listener is already set, override not supported."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final N(Lkfa;)V
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    iget-object v1, p1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    check-cast v0, Lkpo;

    invoke-virtual {v0, v1}, Lkpo;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/wear/ambient/AmbientDelegate;->O(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public final O(Ljava/util/Set;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfa;

    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    iget-object v3, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    check-cast v2, Lkpo;

    invoke-virtual {v2, v3}, Lkpo;->b(Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v3, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iget-object v3, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkfa;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    iget-object v3, v1, Lkfa;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final P()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    move-object v1, v0

    check-cast v1, Lloz;

    invoke-virtual {v1}, Lloz;->f()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Phenotype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    check-cast v0, Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final R(Lkll;)V
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    check-cast v1, Lkll;

    invoke-virtual {v1, p1}, Lkll;->equals(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final S()I
    .locals 3

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->ae(III)I

    move-result v0

    return v0
.end method

.method public final T()I
    .locals 3

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-direct {p0, v2, v1, v0}, Landroidx/wear/ambient/AmbientDelegate;->ae(III)I

    move-result v0

    return v0
.end method

.method public final U()V
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final W()J
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lkna;

    iget-wide v0, v0, Lkna;->b:J

    return-wide v0
.end method

.method public final declared-synchronized X()Ljvs;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljvk;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lglh;

    const/16 v4, 0x11

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lglh;-><init>(Landroidx/wear/ambient/AmbientDelegate;Ljvk;I[B[B)V

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Lknc;

    invoke-virtual {v1}, Lknc;->f()Ljvs;

    move-result-object v1

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v1, v7, v2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    sget-object v2, Lnnv;->a:Lnnv;

    check-cast v1, Ljvk;

    invoke-virtual {v1, v7, v2}, Ljvk;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Y()Lkad;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lknc;

    iget-object v0, v0, Lknc;->f:Ljwf;

    invoke-virtual {v0}, Ljwf;->d()Lkad;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v1, Ljwf;

    invoke-virtual {v1}, Ljwf;->d()Lkad;

    move-result-object v1

    new-instance v2, Ligc;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v0, v3}, Ligc;-><init>(Lkad;Lkad;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Z(J)Lknb;
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    cmp-long v3, p1, v0

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    if-lez v3, :cond_0

    move-object v1, v0

    check-cast v1, Lkna;

    iget-wide v3, v1, Lkna;->b:J

    cmp-long v1, p1, v3

    if-gtz v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v1, v0

    check-cast v1, Lkna;

    iget-wide v7, v1, Lkna;->b:J

    const-string v4, "%s is an illegal block size (Must be > 0 and <= %s"

    move-wide v5, p1

    invoke-static/range {v3 .. v8}, Lmoz;->l(ZLjava/lang/String;JJ)V

    iget-object v1, v1, Lkna;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lkna;

    iget-boolean v2, v2, Lkna;->e:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    check-cast v0, Lkna;

    invoke-virtual {v0, p1, p2}, Lkna;->a(J)Lkmy;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    new-instance p2, Lknb;

    invoke-direct {p2, p0, p1, v3, v3}, Lknb;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lkmy;[B[B)V

    return-object p2

    :cond_2
    return-object v3

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/wearable/compat/WearableActivityController;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final aa(J)Lknb;
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lkna;

    invoke-virtual {v0, p1, p2}, Lkna;->b(J)Lkmy;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Lknb;

    invoke-direct {v0, p0, p1, p2, p2}, Lknb;-><init>(Landroidx/wear/ambient/AmbientDelegate;Lkmy;[B[B)V

    return-object v0

    :cond_0
    return-object p2
.end method

.method public final ab(J)Lnou;
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lkna;

    invoke-virtual {v0, p1, p2}, Lkna;->c(J)Lnou;

    move-result-object p1

    new-instance p2, Lhga;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1, v1}, Lhga;-><init>(Landroidx/wear/ambient/AmbientDelegate;I[B[B)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final ac(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    new-instance v1, Loed;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Loed;-><init>(J[B)V

    check-cast v0, Ljvk;

    iget-object p1, v0, Ljvk;->c:Ljava/util/concurrent/Executor;

    new-instance p2, Ljoq;

    const/4 v3, 0x7

    invoke-direct {p2, v0, v1, v3, v2}, Ljoq;-><init>(Ljvk;Loed;I[B)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 8

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    invoke-static {}, Landroidx/wear/ambient/SharedLibraryVersion;->verifySharedLibraryPresent()V

    new-instance v2, Landroidx/wear/ambient/WearableControllerProvider$1;

    invoke-direct {v2, v1}, Landroidx/wear/ambient/WearableControllerProvider$1;-><init>(Landroidx/wear/ambient/AmbientDelegate$AmbientCallback;)V

    sget-boolean v1, Landroidx/wear/ambient/WearableControllerProvider;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v1, Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;

    const-string v3, "onEnterAmbient"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v3, ".onEnterAmbient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    sput-boolean v4, Landroidx/wear/ambient/WearableControllerProvider;->a:Z

    :goto_0
    new-instance v1, Lcom/google/android/wearable/compat/WearableActivityController;

    const-string v3, "WearableControllerProvider"

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/wearable/compat/WearableActivityController;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/google/android/wearable/compat/WearableActivityController$AmbientCallback;)V

    iput-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Could not find a required method for ambient support, likely due to proguard optimization. Please add com.google.android.wearable:wearable jar to the list of library jars for your project"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onCreate()V

    :cond_3
    return-void
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onDestroy()V

    :cond_0
    return-void
.end method

.method final d()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onPause()V

    :cond_0
    return-void
.end method

.method final e()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onResume()V

    :cond_0
    return-void
.end method

.method final f()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->onStop()V

    :cond_0
    return-void
.end method

.method final g()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientEnabled()V

    :cond_0
    return-void
.end method

.method final h()Z
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0}, Lcom/google/android/wearable/compat/WearableActivityController;->isAmbient()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i(Loku;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Lsj;

    iget-object v0, v0, Lsj;->b:Louo;

    new-instance v1, Lsi;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lsi;-><init>(Loku;)V

    invoke-static {v0, v1, p1}, Lone;->m(Lott;Lomo;Loku;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lolc;->a:Lolc;

    if-eq p1, v0, :cond_0

    sget-object p1, Lojk;->a:Lojk;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lojk;->a:Lojk;

    return-object p1
.end method

.method public final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Lsj;

    iget-object v0, v0, Lsj;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v0, Lvr;

    invoke-virtual {v0}, Lvr;->b()V

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Lsj;

    invoke-virtual {v0}, Lsj;->a()V

    return-void
.end method

.method public final l(Lcfk;)V
    .locals 8

    iput-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast p1, Ljwi;

    invoke-virtual {p1}, Ljwi;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcfo;

    instance-of v1, p1, Lcfo;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcfo;

    invoke-direct {v1}, Lcfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcfo;->b()J

    move-result-wide v3

    int-to-long v5, v2

    cmp-long v7, v5, v3

    if-gez v7, :cond_1

    invoke-virtual {p1, v2}, Lcfo;->a(I)F

    move-result v3

    invoke-virtual {v1, v3}, Lcfo;->c(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    check-cast v0, Lbkc;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    iget-object v6, p1, Lcfo;->a:Lcom/google/googlex/gcam/FloatDeque;

    move-object v3, v0

    check-cast v3, Lcom/google/googlex/gcam/DirtyLensHistory;

    iget-wide v1, v3, Lcom/google/googlex/gcam/DirtyLensHistory;->a:J

    if-nez v6, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_2

    :cond_2
    iget-wide v4, v6, Lcom/google/googlex/gcam/FloatDeque;->a:J

    :goto_2
    invoke-static/range {v1 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->DirtyLensHistory_raw_score_history__set(JLcom/google/googlex/gcam/DirtyLensHistory;JLcom/google/googlex/gcam/FloatDeque;)V

    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    sget-object v0, Ldgs;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->f()V

    return-void
.end method

.method public final m(Lakq;)V
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lalq;

    invoke-virtual {v0}, Lalq;->run()V

    :cond_0
    new-instance v0, Lalq;

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v1, Laks;

    invoke-direct {v0, v1, p1}, Lalq;-><init>(Laks;Lakq;)V

    iput-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final n(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    return p1
.end method

.method public final o(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    return p1
.end method

.method public final p(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    return p1
.end method

.method public final q(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p1

    return p1
.end method

.method public final r(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    return p1
.end method

.method public final s(II)I
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    return p1
.end method

.method public final setAmbientOffloadEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0, p1}, Lcom/google/android/wearable/compat/WearableActivityController;->setAmbientOffloadEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final setAutoResumeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/google/android/wearable/compat/WearableActivityController;

    invoke-virtual {v0, p1}, Lcom/google/android/wearable/compat/WearableActivityController;->setAutoResumeEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final t(I)Landroid/content/res/ColorStateList;
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Labx;->c(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final u(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v0}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final v(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lio;->d()Lio;

    move-result-object v0

    iget-object v1, p0, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lio;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final w(I)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public final x(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final z(IZ)Z
    .locals 1

    iget-object v0, p0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/TypedArray;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    return p1
.end method
