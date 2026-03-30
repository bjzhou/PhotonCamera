.class public final synthetic Lmtf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lmtf;->b:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmtf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

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

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmtf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;->c:Lmti;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lmtf;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->c:Lmti;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    check-cast p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoTextureView;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    iget-object p1, p0, Lnqx;->b:Lnqy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lmtf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lnqx;->b:Lnqy;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Lnqu;->e()V

    goto/32 :goto_12

    nop

    nop

    :goto_15
    iget-object p0, p0, Lmtf;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lnqx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {p0, p1}, Lmti;->onCompletion(Landroid/media/MediaPlayer;)V

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lnqd;->c()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_21
    check-cast p0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_22
    iget-object p0, p0, Lnqy;->e:Lnqg;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p0, p1}, Lmti;->onCompletion(Landroid/media/MediaPlayer;)V

    :goto_24
    goto/32 :goto_16

    nop

    nop

    nop
.end method
