.class public Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;
.super Lmte;
.source "PG"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# static fields
.field private static final d:Lsdb;


# instance fields
.field private e:Landroid/view/TextureView;

.field private f:Landroid/media/MediaPlayer;

.field private g:Landroid/view/Surface;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_24

    nop

    nop

    :goto_3
    new-instance v1, Lmtf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    new-instance v1, Lmtg;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v3, 0xa

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v2, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->d:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->g:Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->h:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p0, v0, v3}, Ljsy;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v2}, Lmtf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Landroid/media/MediaPlayer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v2, 0x1260

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v3, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->e:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    new-instance v2, Ljsy;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "Exception when attempting to set mediaPlayer uri to String: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    invoke-direct {v1, p0, v2}, Lmtg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_26
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m()Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    iget-boolean p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->g:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->d:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->pmtltIiKPHfsnst:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lmte;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lmte;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lmte;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final l()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final m(I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->h:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->430f03c2ea70bd28108d593eca0c7c30m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->132cd3b981019b59dc42653eea0b34b4m()V

    :goto_7
    goto/32 :goto_5

    nop

    nop
.end method

.method public final o()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmte;->i()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->e:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0}, Lmte;->onFinishInflate()V

    goto/32 :goto_1d

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0b013e

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x7f0e005b

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    :goto_10
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->e:Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7f0b013f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1b
    const v1, 0x3f80a3d7    # 1.005f

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7f0b0140

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lmte;->c()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Landroid/view/TextureView;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto/32 :goto_10

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    :goto_22
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->g:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->430f03c2ea70bd28108d593eca0c7c30m()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    new-instance p2, Landroid/view/Surface;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x1

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->132cd3b981019b59dc42653eea0b34b4m()V

    :goto_9
    goto/32 :goto_7

    nop

    nop
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->i:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->g:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final p()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final q()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->f:Landroid/media/MediaPlayer;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
