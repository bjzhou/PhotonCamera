.class public Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;
.super Lmte;
.source "PG"


# instance fields
.field public d:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lmte;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lmte;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lmte;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final l()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final m(I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final o()V
    .locals 1

    goto/32 :goto_3

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
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_13

    nop

    nop

    :goto_2
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lmte;->c()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    new-instance v2, Lmqp;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 v4, 0x11

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f0e005f

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2, p0, v3}, Lmqp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    new-instance v2, Lmtf;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_f
    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-direct {v3, v0, v4, v5}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f0b014e

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    new-instance v0, Landroid/view/GestureDetector;

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

    nop

    :goto_18
    invoke-direct {v2, p0, v1}, Lmtf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lmte;->i()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    new-instance v3, Lmth;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v3, 0x6

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

    :goto_20
    invoke-direct {v3, p0}, Lmth;-><init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    new-instance v3, Lgko;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-super {p0}, Lmte;->onFinishInflate()V

    goto/32 :goto_3

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setAudioFocusRequest(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v0, Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2b
    new-instance v2, Lmtg;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_11

    nop

    nop

    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-direct {v2, p0, v1}, Lmtg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    const v0, 0x7f0b014c

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_33
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_34
    const v0, 0x7f0b014d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop
.end method

.method public final p()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->stopPlayback()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

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

    nop

    nop

    :goto_2
    return-void

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

    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d:Landroid/widget/VideoView;

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
.end method
