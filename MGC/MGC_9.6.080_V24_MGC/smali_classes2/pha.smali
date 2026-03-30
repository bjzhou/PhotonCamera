.class public final Lpha;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/hardware/camera2/CaptureRequest$Key;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    instance-of v2, p1, Lpha;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    nop

    :goto_2
    return v1

    nop

    nop

    :goto_3
    :try_start_0
    check-cast p1, Lpha;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p1, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_17

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_a
    const v0, 0x19

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    if-nez p0, :cond_4

    nop

    goto/32 :goto_8

    nop

    :catchall_0
    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    return v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_5
    :try_start_1
    iget-object p0, p0, Lpha;->b:Ljava/lang/Object;

    nop

    iget-object p1, p1, Lpha;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, La;->aw(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpha;->b:Ljava/lang/Object;

    nop

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

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

    :catchall_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const-string p0, "CaptureRequest$Key;->getName ERROR"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    const v1, 0x13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    nop

    nop

    nop

    iget-object v1, p0, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpha;->b:Ljava/lang/Object;

    nop

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    const-string v1, "%s: %s"

    nop

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
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
.end method
