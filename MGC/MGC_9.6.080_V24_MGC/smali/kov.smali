.class public final synthetic Lkov;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpbz;


# instance fields
.field public final synthetic a:Loxv;

.field public final synthetic b:Loxv;

.field public final synthetic c:Loxv;

.field public final synthetic d:Loxv;


# direct methods
.method public synthetic constructor <init>(Loxv;Loxv;Loxv;Loxv;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lkov;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p2, p0, Lkov;->b:Loxv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lkov;->a:Loxv;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p3, p0, Lkov;->c:Loxv;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v1, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    const v0, 0x13

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v5}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v3, Landroid/location/Location;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v1, Landroid/location/Location;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    iget-object v0, p0, Lkov;->b:Loxv;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_11
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/location/Location;->getMslAltitudeAccuracyMeters()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/location/Location;->getMslAltitudeMeters()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lrss;

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

    :goto_20
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Landroid/location/Location;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    aput-wide v3, v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lkov;->a:Loxv;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p1, Landroid/location/Location;

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

    :goto_2b
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v5, 0x2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    :catchall_0
    :goto_2f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lkov;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_31
    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_35

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    new-array v5, v5, [D

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_36
    iget-object v0, p0, Lkov;->c:Loxv;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    :catchall_1
    :goto_39
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aput-wide v1, v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_3c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

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

    nop
.end method
