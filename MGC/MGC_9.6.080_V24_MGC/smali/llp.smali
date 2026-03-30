.class public final Lllp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lsui;

.field private final d:Lpnv;

.field private e:Lcom/google/googlex/gcam/FrameMetadata;

.field private f:Lcom/google/googlex/gcam/StaticMetadata;

.field private g:F

.field private h:Lcom/google/googlex/gcam/PixelRect;

.field private final i:Lryh;

.field private final j:Lrth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lllp;->a:Lsdb;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "llp"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpnv;Lryh;Lrth;Lsui;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lllp;->c:Lsui;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lllp;->d:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Lllp;->g:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lllp;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lcom/google/googlex/gcam/StaticMetadata;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v0, p0, Lllp;->h:Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lllp;->i:Lryh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lllp;->f:Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lllp;->e:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_14
    iput-object p3, p0, Lllp;->j:Lrth;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method private final declared-synchronized f875135777c17da3cef2ea6eeff5be29m(Lpro;)Z
    .locals 5

    goto/32 :goto_e

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    :try_start_0
    invoke-interface {p1}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lllp;->d:Lpnv;

    nop

    invoke-interface {v1, v0}, Lpnv;->d(Ljava/lang/String;)Lpnx;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lllp;->d:Lpnv;

    nop

    nop

    iget-object v2, p0, Lllp;->j:Lrth;

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpnu;->l()Lpog;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpog;->ordinal()I

    move-result v3

    nop

    nop

    if-eqz v3, :cond_3

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v2, v2, Lrth;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lhni;->ac:Lhmn;

    nop

    nop

    check-cast v2, Lhoh;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    iget-object v2, p0, Lllp;->i:Lryh;

    nop

    invoke-virtual {v2, v0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, p1, v0}, Ltbt;->l(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lllp;->e:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    invoke-static {v1}, Ltbt;->x(Lpnu;)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lllp;->f:Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_ZOOM_RATIO:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    iput v0, p0, Lllp;->g:F

    nop

    new-instance v0, Lcom/google/googlex/gcam/PixelRect;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    iget v1, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->k(I)V

    iget v1, p1, Landroid/graphics/Rect;->right:I

    nop

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/PixelRect;->j(I)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/PixelRect;->l(I)V

    iput-object v0, p0, Lllp;->h:Lcom/google/googlex/gcam/PixelRect;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    return v4

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_1
    iget-object p1, v2, Lrth;->b:Ljava/lang/Object;

    nop

    nop

    nop

    sget-object p1, Lhni;->a:Lhmo;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    if-lez v0, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    :goto_e
    const v0, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lpro;Lprw;Lprw;)Z
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    sget-object v0, Lllu;->a:Lllu;

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lllp;->e:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v2

    nop

    nop

    nop

    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_0
    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v4

    nop

    nop

    nop

    check-cast v5, Lllu;

    nop

    nop

    nop

    iget v6, v5, Lllu;->b:I

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    iput v6, v5, Lllu;->b:I

    nop

    nop

    nop

    nop

    iput-wide v2, v5, Lllu;->c:J

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lllp;->f:Lcom/google/googlex/gcam/StaticMetadata;

    nop

    nop

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/StaticMetadata;->c(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v2

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v5, v4

    nop

    check-cast v5, Lllu;

    nop

    nop

    iget v6, v5, Lllu;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v6, 0x2

    nop

    nop

    nop

    nop

    nop

    iput v6, v5, Lllu;->b:I

    nop

    nop

    iput-wide v2, v5, Lllu;->d:J

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lllp;->h:Lcom/google/googlex/gcam/PixelRect;

    nop

    invoke-static {v2}, Lcom/google/googlex/gcam/PixelRect;->g(Lcom/google/googlex/gcam/PixelRect;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    if-nez v4, :cond_2

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v4, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v5, v4

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lllu;

    nop

    nop

    iget v6, v5, Lllu;->b:I

    nop

    nop

    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    iput v6, v5, Lllu;->b:I

    nop

    nop

    nop

    iput-wide v2, v5, Lllu;->e:J

    nop

    iget p0, p0, Lllp;->g:F

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_3
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v2, Lllu;

    nop

    iget v3, v2, Lllu;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x8

    nop

    nop

    nop

    iput v3, v2, Lllu;->b:I

    nop

    nop

    iput p0, v2, Lllu;->f:F

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lllu;

    nop

    nop

    iget-wide v2, p2, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->a:J

    nop

    nop

    invoke-virtual {p0}, Ltis;->h()[B

    move-result-object v6

    nop

    nop

    move-object v4, p1

    nop

    nop

    nop

    nop

    move-object v5, p3

    nop

    nop

    nop

    nop

    move-object v7, p4

    nop

    invoke-static/range {v2 .. v7}, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;->nativeProcess(JLandroid/hardware/HardwareBuffer;Landroid/hardware/HardwareBuffer;[BLandroid/hardware/HardwareBuffer;)Z

    move-result p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p2, Lcom/google/android/apps/camera/portrait/preview/NativePortraitPreviewProcessor;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p2}, Lllp;->f875135777c17da3cef2ea6eeff5be29m(Lpro;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    if-nez p3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_5
    :try_start_1
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_c
    :try_start_2
    invoke-virtual {p4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    monitor-exit v1

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    if-nez p3, :cond_6

    nop

    goto/32 :goto_32

    nop

    :cond_6
    :try_start_4
    invoke-interface {p3}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p3

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_20

    nop

    nop

    :goto_e
    if-nez p4, :cond_7

    nop

    goto/32 :goto_2c

    nop

    :cond_7
    :try_start_5
    invoke-virtual {p4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    monitor-enter v1

    nop

    nop

    :try_start_6
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {p4}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p4

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/32 :goto_d

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    goto :goto_13

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_13
    throw p0

    nop

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_10

    nop

    nop

    :goto_14
    if-nez p1, :cond_8

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_8
    :try_start_9
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_15
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_a
    invoke-virtual {p4}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :goto_17
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_a

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_b
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    iget-object p2, p0, Lllp;->c:Lsui;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p3, :cond_b

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_b
    :try_start_c
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p4, :cond_c

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_6

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_21
    iget-object v1, p0, Lllp;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    goto :goto_23

    nop

    nop

    nop

    :catchall_4
    move-exception p2

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_23
    throw p0

    nop

    nop

    nop

    nop
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :goto_24
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    return p0

    nop

    nop

    :goto_27
    :try_start_e
    sget-object p0, Lllp;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "MilkPipeline"

    nop

    nop

    invoke-interface {p0, p2, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 p2, 0xf19

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    const-string p2, "Input or output buffer is null."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2f

    nop

    nop

    :goto_29
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_7

    nop

    :goto_2a
    if-nez p3, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_f
    :try_start_f
    invoke-virtual {p3}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2c

    nop

    nop

    nop

    :catchall_5
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_10
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2c
    throw p0

    nop

    nop
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p2}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lllp;->c:Lsui;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_f
    new-instance v0, Lgng;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
