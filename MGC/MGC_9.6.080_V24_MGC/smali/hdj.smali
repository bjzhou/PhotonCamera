.class public final synthetic Lhdj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhdk;

.field public final synthetic b:Lpnx;

.field public final synthetic c:J

.field public final synthetic d:Z

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lhdk;Lpnx;JZJ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhdj;->b:Lpnx;

    nop

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p6, p0, Lhdj;->e:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p3, p0, Lhdj;->c:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhdj;->a:Lhdk;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean p5, p0, Lhdj;->d:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v6, v5, Lsma;->b:I

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_1
    move-object v12, p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_3
    iget v8, v1, Lhdt;->d:I

    nop

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

    nop

    :goto_4
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_6
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_7
    cmp-long v2, v5, v10

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v11}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_a
    iput v2, v1, Lhdt;->e:I

    nop

    :goto_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_c
    or-int/2addr v1, v4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    :cond_0
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_11
    goto/32 :goto_47

    nop

    nop

    :goto_12
    check-cast v1, Lhdt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v11}, Ltkg;->m()Ltkb;

    move-result-object v11

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v9, v1, Lhdt;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_16
    iput v5, v12, Lsma;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v8, v9, v5, v6}, Lhdk;->a(JJ)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v14, v13, Lsma;->b:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_19
    iget-object v4, v3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v5, Lsma;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_1d
    iput-wide v8, v1, Lhdt;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1e
    move-object v5, p0

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

    :goto_1f
    iget v13, v12, Lsma;->b:I

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_20
    iput-object v1, v2, Lskd;->Z:Lskf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_21
    iget-wide v2, p0, Lhdj;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_23
    iget-wide v5, v1, Lhdt;->f:J

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

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

    :goto_25
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_26
    goto/32 :goto_8

    nop

    nop

    :goto_27
    or-int/2addr v14, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    iput-wide v2, p0, Lsma;->i:J

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v5, p0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_d7

    nop

    nop

    :goto_2c
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a3

    nop

    nop

    :goto_2d
    iget-object v2, v0, Lhdk;->c:Lrtm;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v3, Lskf;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v6, v5, Lsma;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_30
    if-gtz v3, :cond_2

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_2
    goto/32 :goto_de

    nop

    nop

    :goto_31
    invoke-virtual {v10, p0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_32
    iget v2, v1, Lhdt;->d:I

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_34
    iget-object p0, v11, Ltkb;->b:Ltkg;

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

    :goto_35
    iput v1, v5, Lsma;->h:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move-object v5, p0

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_38
    iput v7, v5, Lsma;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_39
    iget v1, p0, Lsma;->b:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-long v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3b
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v12, Lsma;

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

    :goto_3d
    check-cast v13, Lsma;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_40
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p0, Lsma;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_43
    or-int/2addr v1, v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_44
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Lhdk;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    or-int/lit8 v1, v1, 0x40

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_47
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_b

    nop

    :goto_49
    goto/32 :goto_3b

    nop

    nop

    :goto_4a
    iput v6, v5, Lsma;->b:I

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Lskf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_4c
    iget v2, v3, Lskf;->b:I

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget v1, v1, Lskc;->aG:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_4f
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_50
    const v1, 0x33a2c

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_51
    iget v14, v13, Lsma;->b:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_52
    if-eqz v3, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string p0, "Suspected camera device error"

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_56
    iget-wide v10, v1, Lhdt;->f:J

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_57
    new-instance v2, Lhdt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    or-int/lit8 v6, v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_5a
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_5b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5d
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5f
    sget-object v1, Lskc;->X:Lskc;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput v1, v2, Lskd;->c:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v2, :cond_7

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object p0, v1, Lhdt;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput v1, v2, Lskd;->b:I

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v1, v3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    or-int/lit8 v6, v6, 0x10

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    add-int/2addr v2, v4

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_69
    iget-wide v8, p0, Lhdj;->c:J

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

    :goto_6a
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6b
    iget v2, v1, Lhdt;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v3, :cond_8

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0, v1}, Lhdu;->a(Lhdt;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_6f
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_70
    iput v6, v5, Lsma;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz p0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_9
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_72
    check-cast v5, Lsma;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v5, Lsma;

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

    :goto_74
    iget v1, v2, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_76
    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_77
    check-cast v2, Left;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    move-object v1, v2

    nop

    :goto_79
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1}, Lhdn;->k()V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7c
    iput v1, p0, Lsma;->b:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v3, p0, Lhdj;->b:Lpnx;

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

    :goto_80
    iput v13, v12, Lsma;->b:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_81
    const/4 v7, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_83
    iget v3, v1, Lhdt;->g:I

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_84
    iget v1, v2, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_85
    if-eqz v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    :cond_a
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast v2, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_87
    or-int/2addr v2, v4

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_d4

    nop

    :goto_89
    if-gtz v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_8a
    sget-object v1, Lskf;->a:Lskf;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_8b
    iget v1, v1, Lhdt;->g:I

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p0, v0, Lhdk;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_8e
    iget-object p0, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_8f
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_90
    iget v12, v5, Lsma;->b:I

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_91
    iput-object p0, v13, Lsma;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v2, p0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_94
    if-eqz v12, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :cond_c
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast v2, Lsma;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_96
    iget-object p0, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iput v2, v1, Lhdt;->b:I

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_98
    or-int/lit8 v13, v13, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_99
    iget-object v2, v1, Lhdu;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v0, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v11, Lsma;->a:Lsma;

    nop

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

    :goto_9c
    iput v2, v1, Lhdt;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_9d
    invoke-direct {v5, v1, v4, v7, v6}, Lhdq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_77

    nop

    nop

    :goto_9e
    iget-boolean v2, p0, Lhdj;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9f
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_a0
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v5, Lhdq;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iput v6, v5, Lsma;->e:I

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_a3
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_a4
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object p0, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_a6
    if-eqz p0, :cond_d

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5

    nop

    nop

    :goto_a7
    move-object v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v11}, Ltkb;->o()V

    :goto_a9
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_aa
    if-eqz p0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    add-int/2addr v2, v4

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iput v6, v5, Lsma;->b:I

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_ae
    iget v6, v1, Lhdt;->c:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_af
    sget-object p0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_b0
    iput v2, v3, Lskf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_b2
    iget v6, v5, Lsma;->b:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    if-gez v2, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v2, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_b6
    iget-object v12, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v12}, Ltkg;->C()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v5, Lsma;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_ba
    iput v2, v1, Lhdt;->c:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-direct {v2, v1}, Lhdt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iput-object v2, v3, Lskf;->c:Lsma;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->x()Lhdu;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v10, v0, Lhdk;->d:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_c0
    iget v3, v1, Lhdt;->g:I

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_c1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_c3
    if-lez v0, :cond_10

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_d3

    nop

    :goto_c4
    iput v8, v5, Lsma;->f:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c5
    iget v3, v1, Lhdt;->g:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object p0, v11, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c7
    or-int/2addr v7, v12

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_c8
    if-eqz p0, :cond_11

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_11
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_c9
    const/4 v4, 0x1

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_ca
    iget-object p0, v11, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_cb
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget v5, v1, Lhdt;->b:I

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_cd
    move-object v5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v0, p0, Lhdj;->a:Lhdk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_cf
    goto/16 :goto_b

    nop

    nop

    :goto_d0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    or-int/lit8 v6, v6, 0x20

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v1}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->x()Lhdu;

    move-result-object v1

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d4
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_d5
    iput v1, v2, Lskd;->f:I

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_d6
    invoke-static {v2, v1, v4, v5}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d7
    if-nez v2, :cond_12

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_12
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iput v9, v5, Lsma;->g:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d9
    iget v2, v1, Lhdt;->b:I

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget v2, v1, Lhdt;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-eqz v2, :cond_13

    nop

    goto/32 :goto_26

    nop

    :cond_13
    goto/32 :goto_25

    nop

    nop

    :goto_dc
    invoke-virtual {v0, p0, v4}, Lhdk;->d(Ljava/lang/String;Z)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    add-int/2addr v2, v4

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_de
    iget v2, v1, Lhdt;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_df
    iget-object v1, v0, Lhdk;->e:Lhdn;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop
.end method
