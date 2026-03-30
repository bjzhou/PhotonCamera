.class public final synthetic Lhfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhgb;

.field public final synthetic b:Lrea;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lhgb;Lrea;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    const/4 v0, 0x1

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lhfz;->c:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

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

    :goto_6
    iput-boolean v0, p0, Lhfz;->c:Z

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

    :goto_7
    iput-object p2, p0, Lhfz;->b:Lrea;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Lcom/google/android/libraries/barhopper/Barhopper;

    nop

    nop

    invoke-direct {v0}, Lcom/google/android/libraries/barhopper/Barhopper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lhfz;->a:Lhgb;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 19

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v4, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1
    iput-object v6, v4, Lhen;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v7, 0x7f1405f1

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

    :goto_3
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4, v5}, Lgvg;->q(Lrdf;)Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    iput v11, v4, Lhen;->e:I

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2, v3}, Lhey;->c(J)V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_8
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    :cond_0
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v5, v0, Lhgb;->c:Lhfd;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_d
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, v5, Lhfa;->e:Lptw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget-object v6, v0, Lhgb;->f:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v12, 0x1

    nop

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

    nop

    :goto_11
    if-nez v5, :cond_2

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_2
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v5, v6}, Lhen;->g(J)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, v3, Lrea;->d:Lrdl;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_14
    sget-object v4, Lrek;->a:Lrek;

    nop

    :goto_15
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v5}, Lrde;->a()Lrdf;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v8, Lrdg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, v4, Lrek;->b:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1a
    if-eq v4, v12, :cond_3

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v6, 0x0

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1e
    invoke-interface {v4}, Ltkv;->size()I

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v6, v5, Lhfa;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v8, v6, v9}, Lrdg;-><init>(Ljava/lang/String;Lrss;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v3, v0, Lhfz;->b:Lrea;

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

    :goto_23
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    invoke-virtual {v5, v6}, Lrde;->h(Lrcz;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_70

    nop

    nop

    :goto_26
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

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
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v4, v3, Lths;->b:Ltid;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

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

    nop

    :goto_2b
    if-lt v6, v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v6, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v3, Lrdl;->c:Lths;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    sget-object v5, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_5

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    :goto_31
    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    :goto_32
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    :goto_33
    iget-object v4, v0, Lhgb;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_34
    sget-object v3, Lths;->a:Lths;

    nop

    :goto_35
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_36
    if-eqz v4, :cond_8

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :cond_8
    goto/32 :goto_a4

    nop

    nop

    :goto_37
    invoke-interface {v10}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Lhey;->a()Lhez;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move v10, v11

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v4}, Lhgb;->b(Z)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v1, v0, Lhfz;->c:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3e
    move v4, v7

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_40
    invoke-static {}, Lheo;->a()Lhen;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v4, v8, v9}, Lhen;->f(J)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v3}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_43
    sget-object v6, Lrcz;->w:Lrcz;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget-object v3, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_8e

    nop

    nop

    :goto_49
    if-nez v10, :cond_9

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_40

    nop

    nop

    :goto_4a
    if-nez v3, :cond_a

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_a
    goto/32 :goto_17

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2}, Lhey;->b(Ljava/util/List;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v4, v4, Ltid;->b:Ltkv;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-wide v7, v4, Lheo;->a:J

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v4}, Ltkv;->size()I

    move-result v4

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_51
    iget-object v4, v3, Lrea;->c:Lrek;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_52
    iget v4, v3, Lrea;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_53
    iget-object v0, v0, Lhgb;->e:Lhga;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    :goto_55
    iget v4, v3, Lrdl;->b:I

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_2a

    nop

    nop

    :goto_57
    new-instance v2, Ljava/util/ArrayList;

    nop

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

    :goto_58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_59
    iget-object v0, v0, Lhfz;->a:Lhgb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v8, v5, Lrde;->b:Lrdg;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5b
    invoke-static {v4}, Lhgb;->b(Z)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {}, Lhez;->a()Lhey;

    move-result-object v1

    nop

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

    :goto_5d
    invoke-virtual {v5, v7, v8}, Lhfd;->a(J)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const v7, 0x7f0803c1

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-object v3, v4, Lhen;->d:Lrss;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v3, :cond_c

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :cond_c
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_65
    iput-object v6, v4, Lhen;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_66
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_68
    if-ne v12, v10, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_e
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_69
    and-int/lit16 v4, v4, 0x400

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v4, v4, Lrek;->b:Ltkv;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6b
    const v1, 0x10

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

    :goto_6c
    iget-object v4, v3, Lrea;->c:Lrek;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_6d
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v10, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6f
    return-void

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/4 v10, 0x0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_f
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {}, Lrdf;->C()Lrde;

    move-result-object v5

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v3, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_76
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_77
    sget v4, Lryb;->d:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_78
    iget-object v5, v0, Lhgb;->b:Lhfa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_79
    invoke-interface {v0, v1}, Lhga;->b(Lhez;)V

    :goto_7a
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    and-int/lit8 v4, v4, 0x2

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_26

    nop

    :goto_7d
    iget-object v10, v5, Lhfa;->i:Lrtm;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_7e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7f
    const/4 v4, -0x1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_1c

    nop

    nop

    :goto_81
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_82
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_a3

    nop

    nop

    :goto_83
    iget-object v6, v5, Lhfa;->c:Landroid/content/Context;

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

    nop

    :goto_84
    invoke-virtual {v5}, Lrde;->f()V

    goto/32 :goto_43

    nop

    nop

    :goto_85
    check-cast v4, Lheo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v4}, Ltkv;->size()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_87
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_88
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/32 :goto_44

    nop

    nop

    :goto_8b
    sget-object v3, Lrdl;->a:Lrdl;

    nop

    nop

    :goto_8c
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_8d
    const/4 v11, 0x3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8e
    move v4, v6

    nop

    nop

    nop

    nop

    :goto_8f
    :try_start_0
    iget-object v8, v0, Lhgb;->g:Lpdf;

    nop

    nop

    nop

    const-string v9, "camera_vkp_fetch_repeated"

    nop

    nop

    nop

    nop

    invoke-interface {v8, v9}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v3, Lrea;->c:Lrek;

    nop

    nop

    nop

    nop

    if-nez v10, :cond_10

    nop

    nop

    sget-object v10, Lrek;->a:Lrek;

    nop

    nop

    nop

    nop

    :cond_10
    iget-object v10, v10, Lrek;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    nop

    :cond_11
    :goto_90
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_15

    nop

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    check-cast v11, Lrei;

    nop

    nop

    iget v12, v11, Lrei;->b:I

    nop

    nop

    and-int/lit8 v12, v12, 0x2

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_11

    nop

    iget-object v12, v0, Lhgb;->i:Landroid/util/LruCache;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v11, Lrei;->d:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v12, v13}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    check-cast v12, Lheo;

    nop

    nop

    nop

    nop

    if-nez v12, :cond_12

    nop

    nop

    nop

    nop

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    nop

    :cond_12
    new-instance v13, Lhen;

    nop

    nop

    invoke-direct {v13, v12}, Lhen;-><init>(Lheo;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    nop

    nop

    nop

    nop

    invoke-virtual {v13, v14, v15}, Lhen;->g(J)V

    iget-object v12, v0, Lhgb;->b:Lhfa;

    nop

    iget-object v14, v11, Lrei;->e:Ltkv;

    nop

    nop

    invoke-interface {v14}, Ltkv;->size()I

    move-result v14

    nop

    nop

    if-eq v14, v5, :cond_13

    nop

    nop

    sget-object v14, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    nop

    nop

    goto/16 :goto_92

    nop

    :cond_13
    iget-object v14, v11, Lrei;->e:Ltkv;

    nop

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    nop

    nop

    const/4 v15, 0x1

    nop

    nop

    const v16, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    move v6, v15

    nop

    nop

    move/from16 v5, v16

    nop

    nop

    nop

    move v7, v5

    nop

    nop

    nop

    :goto_91
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    nop

    nop

    nop

    nop

    if-eqz v17, :cond_14

    nop

    nop

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    nop

    nop

    move-object/from16 v10, v17

    nop

    nop

    nop

    nop

    check-cast v10, Lreh;

    nop

    nop

    nop

    move-object/from16 v17, v14

    nop

    nop

    iget v14, v10, Lreh;->b:I

    nop

    nop

    nop

    int-to-float v14, v14

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    nop

    nop

    nop

    nop

    nop

    iget v14, v10, Lreh;->b:I

    nop

    nop

    int-to-float v14, v14

    nop

    nop

    nop

    nop

    nop

    invoke-static {v14, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    nop

    nop

    nop

    nop

    iget v14, v10, Lreh;->c:I

    nop

    nop

    nop

    int-to-float v14, v14

    nop

    nop

    nop

    nop

    invoke-static {v14, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    iget v10, v10, Lreh;->c:I

    nop

    nop

    int-to-float v10, v10

    nop

    nop

    nop

    nop

    invoke-static {v10, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    nop

    nop

    nop

    nop

    move-object/from16 v14, v17

    nop

    nop

    nop

    move-object/from16 v10, v18

    nop

    nop

    nop

    goto :goto_91

    nop

    nop

    :cond_14
    move-object/from16 v18, v10

    nop

    nop

    new-instance v10, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v5, v7, v15, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {v10}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v5, v12, Lhfa;->j:Lqek;

    nop

    iget v6, v12, Lhfa;->g:I

    nop

    nop

    nop

    nop

    iget v7, v12, Lhfa;->h:I

    nop

    nop

    invoke-static {v14, v5, v6, v7}, Lhhg;->E(Lrss;Lqek;II)Lhel;

    move-result-object v5

    nop

    nop

    invoke-virtual {v13, v5}, Lhen;->d(Lhel;)V

    invoke-virtual {v13}, Lhen;->a()Lheo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v0, Lhgb;->i:Landroid/util/LruCache;

    nop

    nop

    nop

    nop

    iget-object v7, v11, Lrei;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v7, v5}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v10, v18

    nop

    const/4 v5, 0x4

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_90

    nop

    nop

    nop

    nop

    :cond_15
    iget-object v5, v0, Lhgb;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "camera_vkp_semantic_result_convert"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v5, v0, Lhgb;->b:Lhfa;

    nop

    nop

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_19

    nop

    nop

    iget v7, v5, Lhfa;->h:I

    nop

    nop

    nop

    if-eqz v7, :cond_19

    nop

    nop

    nop

    iget v7, v5, Lhfa;->g:I

    nop

    nop

    if-eqz v7, :cond_19

    nop

    nop

    iget-object v7, v5, Lhfa;->d:Lhek;

    nop

    new-instance v10, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    :goto_93
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_18

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Lrei;

    nop

    nop

    nop

    iget v12, v11, Lrei;->c:I

    nop

    nop

    nop

    nop

    invoke-static {v12}, La;->Q(I)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    if-nez v12, :cond_16

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    :cond_16
    add-int/lit8 v12, v12, -0x2

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    shl-int v12, v13, v12

    nop

    nop

    iget-object v13, v11, Lrei;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v12}, Lcom/google/android/libraries/barhopper/Barhopper;->parseRawValue(Ljava/lang/String;I)Lcom/google/android/libraries/barhopper/Barcode;

    move-result-object v12

    nop

    nop

    new-instance v13, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v11, Lrei;->e:Ltkv;

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    nop

    nop

    :goto_94
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    nop

    nop

    nop

    nop

    nop

    if-eqz v14, :cond_17

    nop

    nop

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    check-cast v14, Lreh;

    nop

    nop

    nop

    new-instance v15, Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v17, v8

    nop

    nop

    iget v8, v14, Lreh;->b:I

    nop

    nop

    nop

    nop

    iget v14, v14, Lreh;->c:I

    nop

    nop

    nop

    invoke-direct {v15, v8, v14}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    nop

    nop

    goto :goto_94

    nop

    :cond_17
    move-object/from16 v17, v8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    new-array v8, v8, [Landroid/graphics/Point;

    nop

    nop

    invoke-interface {v13, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    check-cast v8, [Landroid/graphics/Point;

    nop

    nop

    nop

    iput-object v8, v12, Lcom/google/android/libraries/barhopper/Barcode;->cornerPoints:[Landroid/graphics/Point;

    nop

    nop

    nop

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v17

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_93

    nop

    nop

    :cond_18
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    nop

    new-array v8, v8, [Lcom/google/android/libraries/barhopper/Barcode;

    nop

    invoke-interface {v10, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    check-cast v8, [Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    iget v10, v5, Lhfa;->g:I

    nop

    nop

    nop

    nop

    iget v5, v5, Lhfa;->h:I

    nop

    invoke-virtual {v7, v8, v10, v5}, Lhek;->a([Lcom/google/android/libraries/barhopper/Barcode;II)Ljava/util/List;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v6, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_19
    iget-object v5, v0, Lhgb;->g:Lpdf;

    nop

    invoke-interface {v5}, Lpdf;->g()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_95
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_1b

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    check-cast v6, Lrdf;

    nop

    iget-object v7, v0, Lhgb;->j:Lgvg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Lgvg;->q(Lrdf;)Lrss;

    move-result-object v7

    nop

    invoke-virtual {v7}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_1a

    nop

    nop

    nop

    iget-object v8, v0, Lhgb;->g:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v10, "camera_vkp_barcode_convert"

    nop

    nop

    nop

    nop

    invoke-interface {v8, v10}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v8, v0, Lhgb;->b:Lhfa;

    nop

    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v6, v10, v11}, Lhfa;->a(Lrdf;J)Lheo;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lhgb;->g:Lpdf;

    nop

    nop

    nop

    invoke-interface {v8}, Lpdf;->g()V

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lrdf;->d()Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_1a

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lhgb;->i:Landroid/util/LruCache;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrdf;->d()Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lcom/google/android/libraries/barhopper/Barcode;

    nop

    nop

    iget-object v6, v6, Lcom/google/android/libraries/barhopper/Barcode;->rawValue:Ljava/lang/String;

    nop

    invoke-virtual {v8, v6, v7}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_95

    nop

    nop

    :cond_1b
    invoke-static {v9}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_96
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    :goto_97
    goto/32 :goto_3f

    nop

    nop

    :goto_98
    const/4 v12, 0x4

    nop

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

    :goto_99
    if-eqz v4, :cond_1c

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_1c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v9, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v6, v7, v10}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v5, 0x4

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

    :goto_9d
    and-int/lit8 v4, v4, 0x2

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

    :goto_9e
    goto/16 :goto_2f

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_9f
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a0
    invoke-virtual {v4}, Lhen;->a()Lheo;

    move-result-object v3

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_a1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget v4, v3, Lrea;->b:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a4
    sget-object v4, Ltid;->a:Ltid;

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_4e

    nop

    nop

    :goto_a6
    iget-object v4, v0, Lhgb;->j:Lgvg;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_a7
    if-eqz v4, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/16 :goto_75

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_aa
    sget-object v4, Lrek;->a:Lrek;

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v4, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iput v11, v4, Lhen;->f:I

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop
.end method
