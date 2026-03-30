.class public final synthetic Lmtg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lmtg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmtg;->a:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->c:Lmti;

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

    :goto_2
    invoke-virtual {p0}, Lnqu;->dZ()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->c:Lmti;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_4
    iget-boolean v0, v0, Lnqy;->j:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Lmti;->onPrepared(Landroid/media/MediaPlayer;)V

    :goto_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

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

    :goto_9
    iget-object p0, p0, Lmtg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lmtg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;

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

    :goto_14
    check-cast p0, Lnqx;

    nop

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

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lnqx;->b:Lnqy;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_20

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lmtg;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v0, v1, :cond_5

    nop

    goto/32 :goto_16

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Lmtg;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lnqu;->h()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean p1, p0, Lnqy;->i:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lnqx;->b:Lnqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_23
    const v1, 0x5

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p0, p1}, Lmti;->onPrepared(Landroid/media/MediaPlayer;)V

    :goto_28
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_f

    nop

    nop
.end method
