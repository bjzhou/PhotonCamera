.class public final synthetic Lkev;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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

    :goto_2
    iput p2, p0, Lkev;->b:I

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

    nop

    :goto_3
    iput-object p1, p0, Lkev;->a:Ljava/lang/Object;

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
.method public final run()V
    .locals 7

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lkez;

    nop

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

    :goto_1
    iget-object v0, p0, Lkfc;->c:Lgnn;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lkhq;->n()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    :pswitch_0
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lstd;->a:Lstd;

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

    :goto_5
    check-cast p0, Lhbd;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    move-object p0, v0

    nop

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    nop

    nop

    iput-boolean v3, p0, Lkhq;->h:Z

    nop

    nop

    move-object p0, v0

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lkfj;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_9
    iget-object v0, v0, Lkfc;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->c:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0}, Lkhx;->c()V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lkes;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_7f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7e

    nop

    nop

    :goto_14
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    :pswitch_4
    goto/32 :goto_35

    nop

    nop

    :goto_17
    move-object v0, p0

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    monitor-enter v1

    nop

    nop

    nop

    :try_start_1
    move-object v0, p0

    nop

    nop

    nop

    check-cast v0, Lkhk;

    nop

    nop

    nop

    iget-object v0, v0, Lkhk;->a:Lkho;

    nop

    nop

    nop

    nop

    iput-boolean v3, v0, Lkho;->a:Z

    nop

    nop

    check-cast p0, Lkhk;

    nop

    nop

    nop

    iget-object p0, p0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_3

    nop

    nop

    :goto_1c
    iget v1, p0, Lkev;->b:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Microvideo started at <"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lmlt;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lkfe;->h:Lhdu;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v0, Lmlt;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_24
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p0, v0}, Lglz;->c(Lhci;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    :goto_28
    iput-boolean v2, p0, Lhbd;->o:Z

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_29
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lkes;->a:Lglz;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_2d
    iget-object v0, v0, Lkhk;->b:Lkhq;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

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

    :goto_2f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_31
    if-nez v2, :cond_2

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    :goto_32
    if-nez v0, :cond_3

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    :goto_33
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_36
    return-void

    nop

    :pswitch_6
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :pswitch_7
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v0, Lhci;->d:Lhci;

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

    :goto_39
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_3a
    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object v0, Lhci;->f:Lhci;

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

    :goto_3c
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, v1, Lhdu;->c:Ljava/lang/Object;

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

    :goto_3e
    check-cast v0, Lmlt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    monitor-enter v0

    nop

    nop

    :try_start_2
    move-object v1, p0

    nop

    check-cast v1, Lkfc;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v1, v1, Lkfc;->g:Z

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lkfc;

    nop

    invoke-virtual {v1}, Lkfc;->b()V

    :cond_4
    check-cast p0, Lkfc;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkfc;->b:Lglz;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lgmc;

    nop

    nop

    invoke-virtual {p0}, Lgmc;->m()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->initializeProcessingQueueNative(JJ)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lkhq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_42
    sget-object v0, Lnne;->t:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_43
    check-cast p0, Lkhq;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lkfk;->d:Lrtk;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_45
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lkfj;->a:Lkfk;

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

    nop

    :goto_47
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_20

    nop

    :goto_49
    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_4a
    monitor-enter v0

    nop

    nop

    :try_start_3
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    iget p0, p0, Lkhq;->m:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr p0, v2

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    check-cast v1, Lkhq;

    nop

    nop

    nop

    nop

    nop

    iput p0, v1, Lkhq;->m:I

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_3
    move-exception p0

    nop

    monitor-exit v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    :pswitch_9
    goto/32 :goto_2e

    nop

    nop

    :goto_4c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_22

    nop

    nop

    :goto_4d
    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Lkev;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_4f
    iget-object p0, p0, Lkhq;->g:Lows;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1}, Lhdu;->m(Lnne;)Z

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, p0, Lkhq;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_52
    invoke-virtual {p0, v0}, Lkez;->D(Lhci;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lkfc;->c()V

    goto/32 :goto_7c

    nop

    nop

    :goto_54
    sget-object v1, Lnne;->t:Lnne;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v1, :cond_5

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_56
    iget-object v1, v1, Lkhi;->b:Lkhq;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_57
    check-cast p0, Lkfc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v1, Lkhi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_59
    check-cast v0, Lkfc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5a
    iget-wide v2, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_5b
    check-cast p0, Lkhq;

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_5c
    monitor-enter v0

    nop

    nop

    nop

    :try_start_4
    move-object v1, p0

    nop

    nop

    check-cast v1, Lkhk;

    nop

    nop

    iget-object v1, v1, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lkhq;->j:Ljava/util/Deque;

    nop

    move-object v2, p0

    nop

    nop

    check-cast v2, Lkhk;

    nop

    nop

    nop

    iget-object v2, v2, Lkhk;->a:Lkho;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-object v1, p0

    nop

    check-cast v1, Lkhk;

    nop

    nop

    iget-object v1, v1, Lkhk;->b:Lkhq;

    nop

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lkhk;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkhk;->a:Lkho;

    nop

    nop

    iget-wide v2, v2, Lkho;->c:J

    nop

    invoke-virtual {v1, v2, v3}, Lkhq;->f(J)V

    check-cast p0, Lkhk;

    nop

    iget-object p0, p0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0, v1}, Lixe;->a(Lixf;)Lpci;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v1, 0x5

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    throw p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v0, v0, Lkfk;->h:Lixe;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_61
    check-cast p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

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

    nop

    :goto_62
    iget-object p0, p0, Lkfe;->f:Loyn;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v0, v1}, Lmlt;->b(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_64
    monitor-enter v0

    nop

    :try_start_5
    move-object p0, v0

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    iget p0, p0, Lkhq;->m:I

    nop

    add-int/lit8 p0, p0, -0x1

    nop

    move-object v1, v0

    nop

    check-cast v1, Lkhq;

    nop

    nop

    nop

    nop

    iput p0, v1, Lkhq;->m:I

    nop

    if-ltz p0, :cond_6

    nop

    nop

    goto :goto_65

    nop

    :cond_6
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v2}, Lrrf;->x(Z)V

    move-object p0, v0

    nop

    nop

    nop

    nop

    check-cast p0, Lkhq;

    nop

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    :catchall_5
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_66
    check-cast v0, Lkhk;

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

    :goto_67
    iget-object p0, p0, Lkez;->g:Lhco;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_68
    iget-object v0, p0, Lkev;->a:Ljava/lang/Object;

    nop

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

    :goto_69
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_9d

    nop

    nop

    :goto_6a
    throw p0

    nop

    :pswitch_d
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v0, Lkhk;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6c
    monitor-enter p0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_6d
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    :goto_70
    iget-boolean v2, v0, Lkfk;->f:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Lgnn;->n()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_75
    return-void

    nop

    :pswitch_f
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_76
    iget-object v0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-interface {v2, v0, v1}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_78
    check-cast p0, Lkez;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast p0, Lkez;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_7b
    monitor-enter v1

    nop

    :try_start_6
    move-object v2, p0

    nop

    nop

    check-cast v2, Lkhi;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkhi;->b:Lkhq;

    nop

    nop

    nop

    iget-object v2, v2, Lkhq;->e:Lpcu;

    nop

    move-object v3, p0

    nop

    nop

    check-cast v3, Lkhi;

    nop

    iget-object v3, v3, Lkhi;->a:Lkhm;

    nop

    iget-object v3, v3, Lkhm;->d:Lsay;

    nop

    nop

    invoke-virtual {v3}, Lsay;->h()Ljava/lang/Comparable;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v3, v5

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "> cancelled."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lpcu;->b(Ljava/lang/String;)V

    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkhi;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkhi;->b:Lkhq;

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    check-cast v2, Lkhi;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkhi;->a:Lkhm;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lkhq;->e(Lkhm;)V

    check-cast p0, Lkhi;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkhi;->b:Lkhq;

    nop

    nop

    invoke-virtual {p0}, Lkhq;->o()V

    monitor-exit v1

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, v1, Lhdu;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_7e
    return-void

    nop

    :goto_7f
    goto/32 :goto_62

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_81
    new-instance v0, Lkcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_82
    iget-object v0, p0, Lkfj;->a:Lkfk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_83
    const/4 v3, 0x0

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_84
    goto :goto_85

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lkid;

    nop

    nop

    nop

    iget-object v1, v1, Lkid;->e:Lpcu;

    nop

    nop

    const-string v2, "Error sending codec EOS signal"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_85
    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v0, p0, v1}, Lkcc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lkhq;->p()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_89
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_29

    nop

    nop

    :goto_8a
    iget-object v1, p0, Lkfe;->h:Lhdu;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_8b
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0, v0}, Lkez;->D(Lhci;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lhbd;->a()V

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8f
    return-void

    nop

    nop

    :goto_90
    :try_start_8
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lkid;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lkid;->e:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Signaling EOS (Hardware)"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    move-object v0, p0

    nop

    nop

    check-cast v0, Lkid;

    nop

    nop

    nop

    iget-object v0, v0, Lkid;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v1, v0, Lkfk;->e:Lneh;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_92
    throw v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_11
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_8
        :pswitch_12
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_13
        :pswitch_7
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_4
        :pswitch_e
    .end packed-switch

    :goto_93
    goto/32 :goto_27

    nop

    nop

    :goto_94
    const v0, 0xa

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_95
    return-void

    nop

    :pswitch_13
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_96
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Lrtk;->e()V

    :goto_98
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

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

    nop

    :goto_9a
    sget-object v0, Lhci;->k:Lhci;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0, v0}, Lhco;->h(Ljava/lang/Runnable;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0, v0}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9d
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

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

    nop

    :goto_9e
    const v1, 0x7f140457

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object p0, p0, Lkev;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_a0
    check-cast p0, Lkfe;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
