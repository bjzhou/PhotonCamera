.class public final Lkle;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lklr;


# instance fields
.field private final a:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lkle;->a:Ltxm;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final c(FLj$/time/Duration;)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "%01d:%02d"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p2, p0, Ltrv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ltrv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

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

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Ltrv;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    const v1, 0x1e

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

    :goto_c
    invoke-virtual {p2}, Lnka;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const-wide/16 v2, 0x3c

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_f
    float-to-int p1, p1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    mul-float/2addr p1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    iput-wide v0, p2, Lnka;->h:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    const/16 p2, 0x64

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    iput-object v0, p2, Lnka;->m:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    const/high16 p2, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    if-ge p1, p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1c
    const v0, 0xa

    nop

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

    :goto_1d
    goto :goto_17

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lkle;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-long v4, v0, v2

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v0

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

    nop

    :goto_25
    check-cast p2, Lnka;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

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

    :goto_27
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop
.end method

.method public final d()V
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
