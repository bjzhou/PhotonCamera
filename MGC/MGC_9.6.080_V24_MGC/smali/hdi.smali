.class public final synthetic Lhdi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:J

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lhrd;JLj$/time/Instant;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput p5, p0, Lhdi;->d:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-wide p2, p0, Lhdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JI)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-wide p3, p0, Lhdi;->a:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    iput p5, p0, Lhdi;->d:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 11

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, p0, v0}, Lnti;->d(Ljava/lang/String;[B)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, v0, Lmqg;->d:Lgrl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_3
    goto/32 :goto_ce

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_5
    check-cast v0, Lnsv;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v7, v3, Lhdm;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_8
    iget-object p0, v6, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-wide v0, p0, Lhdi;->a:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v8, v7, Lslt;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v1, p0, Lhdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v8, v7

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_12
    invoke-static {v7, v8, v5, v6}, Lhdk;->a(JJ)J

    move-result-wide v5

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v3, Lhdm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v6, v4, Lpdr;->u:I

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_17
    invoke-static {v4, v2, v1, v5}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-wide v5, p0, Lhdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_1a
    new-instance v5, Lhea;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    const-string v2, "SQLite error in markShotFailedImpl for id=%d time=%s"

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lhrd;

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

    :goto_1f
    move-object v2, v9

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_20
    new-instance v3, Lhdm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_21
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

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

    :goto_22
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Lhdn;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {p0}, Lrtm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_27
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_28
    check-cast p0, Lhrd;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0, v0, v1}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_2b
    goto/32 :goto_ae

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object v3, v1

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v4, Lpdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v2, v3, Lskd;->Z:Lskf;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_30
    check-cast p0, Lslt;

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v3, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Lhdn;->k()V

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_33
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iput p0, v3, Lhdm;->c:I

    nop

    nop

    :goto_35
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_37
    sget-object v2, Lskf;->a:Lskf;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_38
    or-int/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_39
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v2}, Lgrl;->b()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget p0, v3, Lhdm;->b:I

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_3d
    check-cast v1, Lntu;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_3e
    check-cast v2, Llxm;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v2, Lnsv;->a:Lnsv;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Ltkb;->o()V

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lhrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance v5, Lhdq;

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v1, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lhrd;->d:Lpcu;

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Lhrd;->d:Lpcu;

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

    :goto_49
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lhrd;

    nop

    iget-object v4, v4, Lhrd;->g:Lhrf;

    nop

    nop

    invoke-interface {v4, v2, v3}, Lhrf;->b(J)Lhrn;

    move-result-object v4

    nop

    nop

    if-eqz v4, :cond_2

    nop

    nop

    nop

    iget-boolean v5, v4, Lhrn;->k:Z

    nop

    nop

    nop

    nop

    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, v4, Lhrn;->k:Z

    nop

    nop

    nop

    nop

    move-object v1, p0

    nop

    nop

    check-cast v1, Lhrd;

    nop

    iget-object v1, v1, Lhrd;->g:Lhrf;

    nop

    invoke-interface {v1, v4}, Lhrf;->c(Lhrn;)V

    move-object v1, p0

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    iget-object v1, v1, Lhrd;->h:Lhro;

    nop

    nop

    nop

    const-string v4, "marked stuck"

    nop

    nop

    move-object v5, v0

    nop

    nop

    check-cast v5, Lj$/time/Instant;

    nop

    invoke-static {v2, v3, v5, v4}, Lhrd;->j(JLj$/time/Instant;Ljava/lang/String;)Lhrr;

    move-result-object v4

    nop

    invoke-interface {v1, v4}, Lhro;->b(Lhrr;)V

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    nop

    iget-object v1, v1, Lhrd;->h:Lhro;

    nop

    invoke-interface {v1, v2, v3}, Lhro;->a(J)Ljava/util/List;

    move-result-object v1

    nop

    invoke-static {v1}, Lhrd;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lhrd;

    nop

    iget-object v4, v4, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "Stuck shot %s detected. Log contents:\n%s"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v5, v1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-interface {v4, v1}, Lpcu;->d(Ljava/lang/String;)V

    :cond_1
    return-void

    nop

    nop

    nop

    :cond_2
    move-object v1, p0

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    iget-object v1, v1, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    nop

    const-string v4, "Attempted to mark shot %s as stuck, but couldn\'t find it"

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    invoke-interface {v1, v4}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4

    goto/32 :goto_120

    nop

    nop

    :goto_4a
    check-cast v0, Lmqg;

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_4b
    iget-object v2, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_4c
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v0, Lhdk;->e:Lhdn;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4e
    iget v7, v2, Lslt;->b:I

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_4f
    const-string v1, "SQLite error in canceledImpl for id=%d time=%s"

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_50
    iget-object v4, p0, Lhdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v3, Lskd;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v3, Left;

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

    :goto_53
    invoke-virtual {p0}, Lhdn;->a()V

    goto/32 :goto_7e

    nop

    nop

    :goto_54
    iget-object v3, p0, Lhdi;->b:Ljava/lang/Object;

    nop

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

    nop

    :goto_55
    return-void

    nop

    nop

    :catch_1
    move-exception v3

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_56
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v1, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_58
    iget v8, v7, Lslt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v2, p0, Lslt;->b:I

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_5c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8a

    nop

    nop

    :goto_5d
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, v0, Lhdk;->c:Lrtm;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p0, p0, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_60
    iget-object v4, v0, Lmqg;->j:Llxn;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_61
    int-to-long v9, p0

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_62
    const/4 v1, 0x1

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_63
    if-gez v2, :cond_4

    nop

    nop

    goto/32 :goto_113

    nop

    :cond_4
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v7, Lslt;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_65
    add-int/2addr p0, v1

    nop

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

    :goto_66
    check-cast p0, Lhrd;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v2, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v3, v4, Lskf;->b:I

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    return-void

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_6c
    or-int/2addr v2, v4

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

    :goto_6d
    const-string v1, "SQLite error in deletedImpl for id=%d time=%s"

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

    nop

    :goto_6e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_7
    .end packed-switch

    :goto_70
    goto/32 :goto_fb

    nop

    nop

    :goto_71
    iput-wide v0, v3, Lnsv;->b:J

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_73
    iput-object v3, v4, Lskf;->d:Lslt;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_74
    const-string v2, "SQLite error in markShotStuckImpl for id=%d time=%s"

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

    :goto_75
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_76
    goto/32 :goto_70

    nop

    :goto_77
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object p0, v0, Lhdk;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_79
    move-object v7, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v2, Lskf;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_7c
    iget v4, v3, Lhdm;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Ltis;->h()[B

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_7e
    iget p0, v4, Lpdr;->u:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    check-cast v0, Lhdk;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-wide v5, v3, Lhdm;->e:J

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p0, v0, v1}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-direct {v3, p0}, Lhdm;-><init>(I)V

    :goto_83
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget v2, v2, Lskc;->aG:I

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_85
    iput v3, v4, Lskf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_86
    iget-wide v2, p0, Lhdi;->a:J

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_87
    iget p0, v3, Lhdm;->c:I

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

    nop

    nop

    :goto_88
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_89
    invoke-interface {v2}, Lgrl;->b()Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_8b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget v3, v3, Lhdm;->d:I

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_8d
    or-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_8e
    iget-wide v1, p0, Lhdi;->a:J

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_1
    move-object v3, p0

    nop

    nop

    nop

    check-cast v3, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v1, v2}, Lhrf;->b(J)Lhrn;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    move-object v4, v0

    nop

    check-cast v4, Lj$/time/Instant;

    nop

    nop

    invoke-virtual {v4}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    iput-wide v4, v3, Lhrn;->f:J

    nop

    iput-wide v4, v3, Lhrn;->g:J

    nop

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhrd;->g:Lhrf;

    nop

    invoke-interface {v4, v3}, Lhrf;->c(Lhrn;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    goto/32 :goto_55

    nop

    nop

    :goto_90
    invoke-virtual {v5, p0}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_91
    iget v2, v3, Lhdm;->b:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    or-int/lit8 v3, v3, 0x2

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_93
    sget v3, Lryb;->d:I

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iput p0, v8, Lslt;->c:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_95
    check-cast v4, Lskf;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_96
    check-cast p0, Ljava/lang/Integer;

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_97
    check-cast p0, Lkhq;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_98
    return-void

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, p0, v1}, Lhdk;->d(Ljava/lang/String;Z)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput v9, v8, Lslt;->b:I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_9b
    if-eqz p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_9f
    or-int/lit8 v7, v7, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_a0
    iget v2, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget p0, v3, Lhdm;->d:I

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_a2
    iget v2, v3, Lskd;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_a3
    iput v7, v2, Lslt;->b:I

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_a4
    check-cast v8, Lslt;

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v2, v0, Lmqg;->d:Lgrl;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-eqz p0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    cmp-long p0, v5, v9

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_a8
    if-eqz v3, :cond_9

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_9
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_ab
    iput v4, v2, Lslt;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v7, v6, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_ad
    iput v2, v7, Lslt;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object p0, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    move-object v5, v2

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v3, v2, Lhdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object v1, v1, Lntu;->l:Lnti;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_b2
    or-int/2addr v9, v1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v4, Left;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b5
    const v1, 0xa

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_b7
    sget-object v6, Llxo;->n:Llxo;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_b8
    if-eqz v7, :cond_a

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_fc

    nop

    nop

    :goto_ba
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_bb
    iput v2, v3, Lskd;->c:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual/range {v2 .. v8}, Lgup;->c(Lrss;Lrss;JLjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_11f

    nop

    nop

    :goto_be
    iget-object p0, p0, Lhrd;->d:Lpcu;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const-string v2, "SQLite error in makingProgressImpl for id=%d time=%s"

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

    :goto_c0
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_c1
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget v0, p0, Lhdi;->d:I

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_76

    nop

    :goto_c5
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    :cond_c
    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_c6
    check-cast v3, Lnsv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_c7
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_5a

    nop

    nop

    :goto_c8
    iput v3, p0, Lslt;->f:I

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_c9
    iget-boolean v7, v0, Lmqg;->i:Z

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_ca
    add-int v0, v0, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    sget-object v6, Lslt;->a:Lslt;

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

    nop

    :goto_cc
    iget-object v0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_cd
    sget-object v2, Lskc;->X:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    :goto_ce
    iget-object p0, v6, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_cf
    check-cast v3, Lslt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    check-cast v5, Llxc;

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

    :goto_d1
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_2
    move-object v4, p0

    nop

    check-cast v4, Lhrd;

    nop

    nop

    iget-object v4, v4, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v2, v3}, Lhrf;->b(J)Lhrn;

    move-result-object v4

    nop

    nop

    if-eqz v4, :cond_e

    nop

    nop

    iget-boolean v5, v4, Lhrn;->l:Z

    nop

    nop

    if-nez v5, :cond_d

    nop

    iput-boolean v1, v4, Lhrn;->l:Z

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Lhrf;->c(Lhrn;)V

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    iget-object v1, v1, Lhrd;->h:Lhro;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "marked failed"

    nop

    nop

    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lj$/time/Instant;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v5, v4}, Lhrd;->j(JLj$/time/Instant;Ljava/lang/String;)Lhrr;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v1, v4}, Lhro;->b(Lhrr;)V

    move-object v1, p0

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    nop

    iget-object v1, v1, Lhrd;->h:Lhro;

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Lhro;->a(J)Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lhrd;->k(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lhrd;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    const-string v5, "Failed shot %s detected. Log contents:\n%s"

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    invoke-static {v5, v1}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v1}, Lpcu;->d(Ljava/lang/String;)V

    :cond_d
    return-void

    nop

    :cond_e
    move-object v1, p0

    nop

    nop

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    const-string v4, "Attempted to mark shot %s as failed, but couldn\'t find it"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    invoke-interface {v1, v4}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object p0, v0, Lhdk;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    :try_start_3
    move-object v3, p0

    nop

    check-cast v3, Lhrd;

    nop

    nop

    nop

    iget-object v3, v3, Lhrd;->g:Lhrf;

    nop

    nop

    invoke-interface {v3, v1, v2}, Lhrf;->b(J)Lhrn;

    move-result-object v3

    nop

    nop

    if-eqz v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    check-cast v4, Lj$/time/Instant;

    nop

    nop

    nop

    invoke-virtual {v4}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    iput-wide v4, v3, Lhrn;->e:J

    nop

    nop

    iput-wide v4, v3, Lhrn;->g:J

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    check-cast v4, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lhrd;->g:Lhrf;

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lhrf;->c(Lhrn;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_f
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v2, v0, Lhdk;->b:Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;

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

    :goto_d6
    check-cast v2, Lrsx;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_d7
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v5, v0, Lhdk;->d:Lmjv;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_d9
    move-object v9, v3

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v6}, Ltkb;->o()V

    :goto_db
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_dd
    check-cast p0, Lhrd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    move-object v2, p0

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_df
    invoke-virtual {p0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Lhdn;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_e0
    iput v2, p0, Lslt;->b:I

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_e2
    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_e3
    iput v2, v3, Lskd;->b:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v3, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_e5
    iput p0, v3, Lhdm;->b:I

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_e6
    iget-object v2, v2, Lrsx;->a:Ljava/lang/Object;

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

    :goto_e7
    invoke-static {v3, v2, v1, v5}, Ldvw;->z(Left;ZZLubk;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e8
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e9
    iget-object v3, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_ea
    iget p0, v3, Lhdm;->a:I

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v1, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_ed
    const-string p0, "Suspected camera device error"

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-direct {v5, p0, v3, v2}, Lhdq;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object p0, p0, Lhdi;->b:Ljava/lang/Object;

    nop

    nop

    nop

    :try_start_4
    move-object v4, p0

    nop

    nop

    nop

    nop

    check-cast v4, Lhrd;

    nop

    iget-object v4, v4, Lhrd;->g:Lhrf;

    nop

    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lj$/time/Instant;

    nop

    nop

    nop

    invoke-virtual {v5}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v5

    nop

    invoke-interface {v4, v2, v3, v5, v6}, Lhrf;->a(JJ)I

    move-result v4

    nop

    nop

    if-eq v4, v1, :cond_10

    nop

    nop

    move-object v1, p0

    nop

    nop

    check-cast v1, Lhrd;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lhrd;->d:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v5, "makingProgress updated %d rows for id=%d with time=%s (expected 1)"

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v4, v6, v0}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {v5, v4}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v4}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_10
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-eqz v3, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_11
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    const-string v8, ""

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

    :goto_f3
    iget-object p0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v2, v0}, Lpuq;->bN(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_f5
    iget-wide v7, p0, Lhdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f6
    iget-wide v2, p0, Lhdi;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f8
    iget-wide v5, v3, Lhdm;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_fa
    check-cast v9, Lgup;

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_77

    nop

    :goto_fc
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_fd
    iget-object v1, v0, Lmqg;->d:Lgrl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v7, v0, Lmqg;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-interface {v1}, Lgrl;->c()Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_100
    iget v9, v8, Lslt;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_101
    invoke-virtual/range {v2 .. v8}, Lgup;->l(Lrss;Llxn;Llxc;Llxo;ZLjava/util/List;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    return-void

    nop

    nop

    nop

    :catch_2
    move-exception v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-interface {p0, v0, v3}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_104
    iput v2, v3, Lskd;->f:I

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_105
    iget-object v0, p0, Lhdi;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    add-int/2addr p0, v1

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {p0, v2, v0, v1}, Lkhq;->k(Llxm;J)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    iget-wide v2, p0, Lhdi;->a:J

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_109
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    if-gez p0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_10b
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_10d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/camerafatalerror/CameraFatalErrorTrackerDatabase;->w()Lhdn;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {p0}, Ltkb;->o()V

    :goto_10f
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    or-int/lit8 v8, v8, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_112
    goto/16 :goto_aa

    nop

    nop

    :goto_113
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v3, p0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_115
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_116
    iget-object v4, p0, Lhdi;->c:Ljava/lang/Object;

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

    :goto_117
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_118
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_119
    invoke-interface {p0, v0, v1}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {p0, v0, v3}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    :goto_11b
    iget-object v3, p0, Ltkb;->b:Ltkg;

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

    :goto_11c
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_11d
    iget-wide v0, p0, Lhdi;->a:J

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-direct {v5, v2, v6, v1}, Lhea;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-static {v1}, Lgup;->m(Lrss;)V

    goto/32 :goto_98

    nop

    nop

    :goto_120
    return-void

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_121
    check-cast v2, Lslt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_122
    sget-object p0, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop
.end method
