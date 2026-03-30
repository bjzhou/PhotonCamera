.class public final Ljms;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfgt;


# instance fields
.field public final synthetic a:Ljmu;


# direct methods
.method public constructor <init>(Ljmu;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljms;->a:Ljmu;

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

    nop
.end method


# virtual methods
.method public final a([B)V
    .locals 19

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

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

    nop

    :goto_1
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2
    aget v6, v13, v2

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    :goto_5
    const v0, 0x15

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5, v0, v4}, Lfgv;->r(Landroid/os/Handler;Lfgw;)V

    :goto_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Ljmu;->y:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop

    :goto_e
    iget-object v0, v0, Ljmu;->w:Ljny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_f
    aput v8, v13, v7

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_11
    aget v6, v4, v3

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_12
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_13
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v5, v0, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    aget v12, v4, v11

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_19
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0, v4}, Ljny;->a(Ljava/lang/Object;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_1c
    aget v5, v4, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v15, 0x9

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v0, v3, :cond_0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_20
    new-array v13, v15, [F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    aput v5, v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v4}, Ljny;->a(Ljava/lang/Object;)V

    :goto_23
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v0, Ljmu;->b:Ljmx;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, v0, Ljmu;->c:Ljmb;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_26
    const/16 v15, 0x8

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    const/4 v7, 0x2

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_29
    if-lt v2, v15, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget v14, v4, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v3, v4, v5, v0, v2}, Ljmb;->a(Landroid/view/WindowManager;Lhoh;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Z)Lfhs;

    move-result-object v0

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

    :goto_2c
    iput-boolean v2, v0, Ljmu;->r:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v0, v4}, Ljny;->a(Ljava/lang/Object;)V

    :goto_2e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_30
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    iget-object v5, v5, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_34
    new-instance v4, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_35
    aput v14, v13, v11

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_37
    aget v10, v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Ljmu;->J:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_39
    iget-object v4, v0, Ljmu;->q:Landroid/view/WindowManager;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    aget v8, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_3c
    aput v6, v13, v3

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3d
    const/4 v9, 0x4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :try_start_0
    iget-object v4, v0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    iget-object v0, v0, Ljmu;->o:Ljava/io/FileWriter;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Ljmu;->x:Ljny;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aget v6, v13, v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_44
    aput v17, v13, v5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_45
    aget v4, v4, v18

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

    :goto_46
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v4}, Ljnq;->f()[F

    move-result-object v4

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

    :goto_48
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Ljmx;->c()V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Ljmu;->x:Ljny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4b
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_7c

    nop

    :goto_4d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_4e
    const/16 v5, 0x8

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v4, v0, Ljmu;->g:Ljnq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_51
    iget-object v5, v0, Ljmu;->I:Lhoh;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_52
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_53
    sget-object v4, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->MztjfDtZyphIRl:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v4, Lkec;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljmu;->g()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_56
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_59
    iget-object v0, v0, Ljmu;->H:Landroid/os/Handler;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5a
    aput v4, v13, v5

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

    nop

    :goto_5b
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_5c
    add-float/2addr v5, v6

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v2, v0, v4, v7}, Ljky;-><init>(Ljmu;[BI)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-boolean v2, v0, Ljmu;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_61
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v2, Ljky;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_63
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_64
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_2e

    nop

    nop

    :goto_69
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6a
    aput v10, v13, v5

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    aget v16, v4, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_6c
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v4, v1, v3}, Lkec;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    const/16 v18, 0xa

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6f
    new-instance v8, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    aput v12, v13, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_71
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    :goto_72
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    aput v16, v13, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Ljmu;->B:Ljny;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string v4, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_77
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_78
    move-object/from16 v4, p1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v13, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    :goto_7b
    const/4 v5, 0x0

    nop

    nop

    :goto_7c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    aget v17, v4, v15

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_7e
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, v1, Ljms;->a:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop
.end method
