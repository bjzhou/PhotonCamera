.class public final Lasw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/Choreographer$FrameCallback;
.implements Laww;
.implements Lbpy;


# static fields
.field public static a:J


# instance fields
.field private final b:Landroid/view/View;

.field private final c:Lbtg;

.field private d:Z

.field private final e:Landroid/view/Choreographer;

.field private f:Z

.field private g:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 p1, 0x41f00000    # 30.0f

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v0, p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    sget-wide v0, Lasw;->a:J

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

    :goto_7
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-array v1, v1, [Lawu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_9
    invoke-static {}, Lasw;->OJqiYqNDwFVWhuky()Landroid/view/Choreographer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    const v1, 0xa

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

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    :goto_f
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x42700000    # 60.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    if-ltz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lasw;->e:Landroid/view/Choreographer;

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

    nop

    :goto_13
    iput-object p1, p0, Lasw;->b:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lasw;->JilvABhQVXrgBRTk(Landroid/view/View;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    new-instance v0, Lbtg;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const p0, 0x4e6e6b28    # 1.0E9f

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sput-wide p0, Lasw;->a:J

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const/16 v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0}, Lasw;->zvPGjHFctiEBEHXQ(Landroid/view/Display;)F

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xf

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_21
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    float-to-long p0, p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    cmp-long p0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_24
    cmpl-float p1, p0, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v1}, Lbtg;-><init>([Ljava/lang/Object;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lasw;->c:Lbtg;

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

    :goto_27
    invoke-static {p1}, Lasw;->QzaCEWZrLdtoUzhP(Landroid/view/View;)Landroid/view/Display;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p0, :cond_4

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

    :cond_4
    goto/32 :goto_1f

    nop

    nop
.end method

.method public static FRGRPEpmaOSvqFDN(Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static GaheiqSmCPuIaSHt(Lawu;Lawv;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lawu;->c(Lawv;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static JQbZQWPsutuUPLxj(Landroid/view/View;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static JilvABhQVXrgBRTk(Landroid/view/View;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OJqiYqNDwFVWhuky()Landroid/view/Choreographer;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

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

.method public static POqDmqrQLawLuNAR(Lbtg;Ljava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lbtg;->n(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QzaCEWZrLdtoUzhP(Landroid/view/View;)Landroid/view/Display;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static RgRhhNTXkUzoiPKP(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_1

    nop

    nop

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
.end method

.method public static TjudsdKefOjKBYMc(Lbtg;I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lbtg;->c(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static dwtisdqRADXYuIaJ(Lasv;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

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

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lasv;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x10

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop
.end method

.method public static jsjUCafVOdricgwk(Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static pIxbddtbHEFKzrSw(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_1

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
.end method

.method public static vMGYLOLloYWfXkwE(Landroid/view/View;Ljava/lang/Runnable;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v0

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
    return v0

    nop

    nop
.end method

.method public static zvPGjHFctiEBEHXQ(Landroid/view/Display;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

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
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lasw;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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
.end method

.method public final cc()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lasw;->b:Landroid/view/View;

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lasw;->e:Landroid/view/Choreographer;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, p0}, Lasw;->pIxbddtbHEFKzrSw(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, p0}, Lasw;->jsjUCafVOdricgwk(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lasw;->f:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lawu;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p0, Lasw;->d:Z

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {v0, p1}, Lasw;->POqDmqrQLawLuNAR(Lbtg;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lasw;->d:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0}, Lasw;->FRGRPEpmaOSvqFDN(Landroid/view/View;Ljava/lang/Runnable;)Z

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lasw;->b:Landroid/view/View;

    nop

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

    :goto_7
    iget-object v0, p0, Lasw;->c:Lbtg;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p1, 0x1

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

    :goto_9
    if-eqz p1, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final doFrame(J)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lasw;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p1, p0, Lasw;->g:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-static {p1, p0}, Lasw;->vMGYLOLloYWfXkwE(Landroid/view/View;Ljava/lang/Runnable;)Z

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lasw;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final run()V
    .locals 7

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

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

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, p0, Lasw;->c:Lbtg;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v2, p0, Lasw;->g:J

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v3, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x20

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_32

    nop

    nop

    :goto_e
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-wide v4, Lasw;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    :goto_11
    goto/16 :goto_31

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    :goto_17
    iget-object v3, p0, Lasw;->c:Lbtg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_18
    iput-boolean v1, p0, Lasw;->d:Z

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

    :goto_19
    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    cmp-long v3, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_6

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v2, v3}, Lasv;-><init>(J)V

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    invoke-static {v0, p0}, Lasw;->RgRhhNTXkUzoiPKP(Landroid/view/Choreographer;Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v3, Lawu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_23
    aget-object v3, v3, v1

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

    nop

    :goto_24
    invoke-static {v0}, Lasw;->JQbZQWPsutuUPLxj(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lasw;->e:Landroid/view/Choreographer;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v3, v1}, Lasw;->TjudsdKefOjKBYMc(Lbtg;I)Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    if-gtz v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    nop

    :goto_2a
    new-instance v0, Lasv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-boolean v0, p0, Lasw;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lasw;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_30
    move v2, v1

    nop

    nop

    :goto_31
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Lasw;->c:Lbtg;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v3, v0}, Lasw;->GaheiqSmCPuIaSHt(Lawu;Lawv;)Z

    move-result v3

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_36
    iget v3, v3, Lbtg;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v0, p0, Lasw;->f:Z

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_38
    iget-object v3, v3, Lbtg;->a:[Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_39
    add-long/2addr v2, v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_9

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lasw;->c:Lbtg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3c
    iget v0, v0, Lbtg;->b:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3d
    invoke-static {v0}, Lasw;->dwtisdqRADXYuIaJ(Lasv;)J

    move-result-wide v3

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

    nop

    :goto_3e
    iput-boolean v1, p0, Lasw;->d:Z

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
.end method
