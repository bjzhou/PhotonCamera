.class public final Lrx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ltxm;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ltxm;Lejk;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrx;->a:Ltxm;

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

    :goto_3
    return-void

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Ljava/lang/Object;

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
.method public final a()Ljava/util/List;
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    const-string v0, "Failed to query CameraManager#getCameraIdList: No values returned."

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

    :goto_1
    const v1, 0x17

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const-string p0, "CXCP"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-static {v3}, Loz;->b(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    array-length v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "CXCP"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    aget-object v3, p0, v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    const-string v1, "Failed to query CameraManager#getCameraIdList!"

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

    :goto_b
    return-object v1

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    goto/32 :goto_16

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrx;->b:Ljava/lang/Object;

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

    nop

    :goto_11
    monitor-exit v0

    nop

    :try_start_0
    invoke-static {}, Lcom/a;->ac()[Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_14
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_17

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Ltyw;->a:Ltyw;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    new-instance v1, Ljava/util/ArrayList;

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

    nop

    :goto_19
    new-instance v4, Loz;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v4, v3}, Loz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_8

    nop

    nop

    :goto_20
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    :goto_21
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_27

    nop

    nop

    :goto_24
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop
.end method
