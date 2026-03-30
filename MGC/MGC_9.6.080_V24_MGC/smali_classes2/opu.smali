.class public final synthetic Lopu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lojf;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lopu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lopu;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p2, p0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lopu;->b:Ljava/lang/Object;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lopu;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const-string p1, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lopu;->c:I

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

    :goto_4
    iput-object p2, p0, Lopu;->b:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 22

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, v0, Lopu;->c:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    iget-object v4, v0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4
    iget-object v2, v0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-static {v2, v3}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_22

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, v1, Lopb;->t:Lyo;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0xb

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_b
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d
    const-string v4, "CURRENT:"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_e
    invoke-direct {v4, v5, v3}, Lort;-><init>(Lpic;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4}, Loow;->b()Loiz;

    move-result-object v4

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v2, Loiz;

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
    check-cast v4, Loow;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1, v2, v0}, Lopz;->e(Lort;Ljava/lang/String;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast v5, Lpic;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xb

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v4, ":"

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1e
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v1, p1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v0, v2}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    :goto_22
    const/16 v0, 0x1c

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Loqa;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    iget-object v0, v0, Lopu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Lort;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    throw v0

    nop

    :goto_2b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2e
    check-cast v1, Loqa;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_35

    nop

    nop

    :goto_32
    invoke-direct {v3, v2, v4}, Lopy;-><init>(Loiz;I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_33
    check-cast v4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    check-cast v1, Lopz;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, v0, Lopu;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

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

    :goto_37
    invoke-virtual {v1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_39
    new-instance v4, Lort;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3a
    move-object v4, v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v1, Lopz;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3c
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v4, p2

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3f
    iget-object v4, v0, Lopu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v5, p2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_42
    if-ne v1, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_43
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v0, v3}, Lfum;->A(ILandroid/os/Parcel;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_45
    sget-object v6, Loog;->j:Logb;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_46
    invoke-direct {v2, v4, v3}, Lort;-><init>(Lpic;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_47
    check-cast v1, Lopz;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_48
    if-ne v1, v2, :cond_2

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v4, Ljava/lang/String;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    :goto_4b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    monitor-enter v7

    nop

    nop

    nop

    :try_start_0
    iget-object v8, v1, Lopb;->t:Lyo;

    nop

    nop

    nop

    invoke-virtual {v8, v5}, Lyo;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    nop

    check-cast v8, Looj;

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_5

    nop

    if-eqz v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_4d

    nop

    nop

    nop

    nop

    :cond_4
    iget-object v3, v8, Looj;->a:Loow;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Loow;->c(Loiz;)V

    move-object v12, v8

    nop

    nop

    nop

    nop

    move-object v8, v2

    nop

    nop

    goto :goto_4e

    nop

    nop

    nop

    :cond_5
    :goto_4d
    new-instance v4, Looj;

    nop

    nop

    nop

    check-cast v3, Loow;

    nop

    nop

    invoke-direct {v4, v3}, Looj;-><init>(Loow;)V

    iget-object v3, v1, Lopb;->t:Lyo;

    nop

    nop

    nop

    invoke-virtual {v3, v5, v4}, Lyo;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v4

    nop

    :goto_4e
    if-eqz v6, :cond_6

    nop

    nop

    nop

    invoke-virtual {v1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    check-cast v1, Loot;

    nop

    nop

    nop

    invoke-virtual {v5}, Loix;->a()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v8, v12, v3}, Lopc;->a(Landroid/os/IInterface;Look;Ljava/lang/String;)Lopc;

    move-result-object v3

    nop

    nop

    new-instance v4, Lois;

    nop

    nop

    nop

    move-object/from16 v5, p2

    nop

    nop

    check-cast v5, Lpic;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v5}, Lois;-><init>(Ljava/lang/Object;Lpic;)V

    invoke-virtual {v1}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v2, v0}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v2, v4}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 v0, 0x58

    nop

    nop

    invoke-virtual {v1, v0, v2}, Lfum;->A(ILandroid/os/Parcel;)V

    goto :goto_4f

    nop

    :cond_6
    invoke-virtual {v1}, Lojy;->t()Landroid/os/IInterface;

    move-result-object v1

    nop

    check-cast v1, Loot;

    nop

    new-instance v11, Lopd;

    nop

    nop

    nop

    nop

    nop

    move-object v14, v0

    nop

    nop

    nop

    nop

    check-cast v14, Lcom/google/android/gms/location/LocationRequest;

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    const-wide v20, 0x7fffffffffffffffL

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    const/16 v18, 0x0

    nop

    move-object v13, v11

    nop

    nop

    invoke-direct/range {v13 .. v21}, Lopd;-><init>(Lcom/google/android/gms/location/LocationRequest;Ljava/util/List;ZZZZJ)V

    new-instance v15, Looz;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v0, p2

    nop

    nop

    nop

    nop

    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v15, v0, v12}, Looz;-><init>(Lpic;Look;)V

    invoke-virtual {v5}, Loix;->a()Ljava/lang/String;

    move-result-object v16

    nop

    nop

    new-instance v0, Lope;

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    const/4 v10, 0x1

    nop

    move-object v9, v0

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v16}, Lope;-><init>(ILopd;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Loot;->e(Lope;)V

    :goto_4f
    monitor-exit v7

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit v7

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v1, Loqa;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v1, Lopb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_53
    check-cast v4, Lpic;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_54
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v6}, Lopb;->I(Logb;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_56
    const v1, 0x2

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_57
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    :goto_59
    goto/32 :goto_54

    nop

    nop

    :goto_5a
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v3, v4}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, v0, Lopu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5d
    new-instance v3, Lopy;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5e
    iget-object v3, v0, Lopu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v4, Loiz;->b:Loix;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop
.end method
