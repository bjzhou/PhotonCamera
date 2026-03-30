.class public final Lswc;
.super Lsfm;
.source "PG"


# static fields
.field public static final synthetic b:I

.field private static final c:J


# instance fields
.field public final a:Landroid/content/Context;

.field private final d:Ltxm;

.field private final e:Lswj;

.field private final f:Ltxm;

.field private final g:Lswe;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Lswn;Lsui;)V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lswe;->b:Lquo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Llww;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    :goto_6
    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p0, p1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lswe;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0, v2, v2}, Lquo;->a(Landroid/content/Context;ZZ)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lswc;->g:Lswe;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, v0, Lswe;->b:Lquo;

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    new-instance v1, Lquo;

    nop

    nop

    nop

    invoke-direct {v1}, Lquo;-><init>()V

    iput-object v1, v0, Lswe;->b:Lquo;

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Lrpl;->d(Lstu;)Lstu;

    move-result-object p0

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

    nop

    :goto_15
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    :goto_16
    invoke-direct {v1, p0, p2, p1, v2}, Llww;-><init>(Lswc;Lsui;Lswn;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-wide v0, Lswc;->c:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const-wide/16 v1, 0x1

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

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x18

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

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

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
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
.end method

.method public constructor <init>(Landroid/content/Context;Lswe;Ltxm;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

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

    :goto_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lswc;->g:Lswe;

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

    :goto_4
    new-instance p2, Lswb;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lswc;->e:Lswj;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-direct {p2, p1, p4}, Lswb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-wide v1, Lswc;->c:J

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

    :goto_8
    new-instance v0, Lswj;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iput-object p3, p0, Lswc;->f:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    :goto_b
    invoke-direct {p0, v0}, Lsfm;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iput-object p2, p0, Lswc;->d:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lswc;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2}, Lswj;-><init>(J)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/RuntimeException;Lsej;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "ClientLoggingBackend"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p2, "Internal logging error"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final c(Lsej;)V
    .locals 18

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    :goto_2
    invoke-static {v1}, Lrkm;->j(Ljava/lang/Throwable;)Ltkb;

    move-result-object v1

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

    nop

    :goto_3
    iget v1, v4, Lswn;->b:I

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v1

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

    :goto_5
    iget v1, v4, Lsqi;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6
    invoke-interface/range {p1 .. p1}, Lsej;->f()Lsdj;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v4}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v1, v4, Lswn;->g:Lsqi;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {v3, v1, v6, v4}, Lsvy;->b(Lsej;ILsvx;)Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, v4, Lsqi;->j:Lsqn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_10
    invoke-interface/range {p1 .. p1}, Lsej;->l()Lsfl;

    move-result-object v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_11
    invoke-interface/range {p1 .. p1}, Lsej;->e()J

    move-result-wide v6

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_12
    goto/16 :goto_89

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v4, Ljava/lang/Throwable;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v5}, Ltkb;->o()V

    :goto_17
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v4, v5}, Lsvw;->c(Z)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_35

    nop

    nop

    :goto_1b
    if-eqz v4, :cond_1

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

    :cond_1
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

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

    :goto_1e
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

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v5}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_20
    invoke-interface/range {p1 .. p1}, Lsej;->l()Lsfl;

    move-result-object v3

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

    :goto_21
    sget-object v1, Lsqi;->a:Lsqi;

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, v0, Lswc;->d:Ltxm;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, v5, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v3, v0, Lswc;->d:Ltxm;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_27
    iget-object v7, v3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_28
    monitor-enter v1

    nop

    nop

    :try_start_1
    iget-object v2, v1, Lswj;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lswj;->d:Ljava/util/ArrayList;

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Lswc;->e:Lswj;

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

    :goto_2b
    sget-object v8, Lswn;->a:Lswn;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_2c
    check-cast v1, Lswn;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v2, Lswh;->a:Lsui;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v7, :cond_2

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    :goto_2f
    instance-of v1, v4, Lsdm;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_30
    const v1, 0x1e

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

    :goto_31
    iget-object v4, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v4}, Lsvy;->a(Lsej;Lsdr;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, v3, Lsfl;->b:Ljava/lang/String;

    nop

    :goto_34
    goto/32 :goto_81

    nop

    nop

    :goto_35
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v4, Lsde;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    :goto_38
    new-instance v1, Lswd;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_39
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_2
    iget-wide v8, v5, Lswh;->b:J

    nop

    iget-wide v10, v4, Lswj;->b:J

    nop

    nop

    nop

    nop

    cmp-long v3, v8, v10

    nop

    nop

    nop

    const/16 v6, 0x3e8

    nop

    nop

    nop

    nop

    nop

    if-gez v3, :cond_4

    nop

    nop

    iget-object v3, v4, Lswj;->c:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    if-ge v3, v6, :cond_4

    nop

    goto/16 :goto_3c

    nop

    :cond_4
    iget-object v3, v4, Lswj;->c:Ljava/util/LinkedHashMap;

    nop

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    nop

    nop

    nop

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    iget-wide v11, v4, Lswj;->a:J

    nop

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v4, Lswj;->c:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_8

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    check-cast v13, Lswh;

    nop

    iget-wide v14, v13, Lswh;->b:J

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v14, v10

    nop

    nop

    nop

    nop

    cmp-long v16, v14, v8

    nop

    nop

    nop

    nop

    if-ltz v16, :cond_6

    nop

    nop

    if-le v12, v6, :cond_5

    nop

    nop

    nop

    goto :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iput-wide v14, v4, Lswj;->b:J

    nop

    nop

    nop

    nop

    nop

    goto :goto_3c

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3b
    iget-wide v14, v13, Lswh;->c:J

    nop

    nop

    nop

    const-wide/16 v16, 0x0

    nop

    nop

    nop

    cmp-long v14, v14, v16

    nop

    nop

    nop

    if-lez v14, :cond_7

    nop

    nop

    iget-object v14, v4, Lswj;->d:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    if-ge v14, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v4, Lswj;->d:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v12, v12, -0x1

    nop

    nop

    nop

    nop

    goto :goto_3a

    nop

    nop

    nop

    nop

    :cond_8
    :goto_3c
    iget-object v3, v4, Lswj;->c:Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-virtual {v3, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lswh;

    nop

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    if-nez v3, :cond_e

    nop

    nop

    nop

    iget-object v3, v4, Lswj;->c:Ljava/util/LinkedHashMap;

    nop

    nop

    invoke-virtual {v3, v7, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3d
    throw v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v4

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v5, Lswh;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_9

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_9
    goto/32 :goto_19

    nop

    :goto_40
    or-int/lit8 v1, v1, 0x20

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

    :goto_41
    iput v8, v7, Lswn;->b:I

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    :goto_43
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

    nop

    nop

    :goto_44
    or-int/2addr v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_46
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iput v1, v4, Lswn;->b:I

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v5, v4, v2, v6, v7}, Lswh;-><init>(Ltkb;Lsui;J)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4d
    check-cast v1, Lsqn;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4e
    if-eqz v4, :cond_a

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_a
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v1, Lswn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_51
    iget-wide v4, v2, Lswh;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_53
    check-cast v2, Lswh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v1, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {v0, v1, v2}, Lswc;->23ce148e54b083367f51e25c7971761em(Lswn;Lsui;)V

    goto/32 :goto_86

    nop

    nop

    :goto_56
    check-cast v2, Ljava/lang/String;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v2, Lswa;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v3, Lswn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v4}, Lswb;->b()Lsvy;

    move-result-object v4

    nop

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

    :goto_5c
    iget v8, v7, Lswn;->b:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5d
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    :goto_5e
    or-int/lit16 v1, v1, 0x400

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast v4, Lswn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_61
    invoke-direct {v7, v6, v3}, Lswi;-><init>(Lsdj;Ljava/lang/String;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_63
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_64
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_65
    invoke-virtual {v4, v1, v6, v7}, Lsvy;->b(Lsej;ILsvx;)Ltkb;

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

    :goto_66
    invoke-static {}, Lsvx;->a()Lsvw;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface/range {p1 .. p1}, Lsej;->o()Ljava/util/logging/Level;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_c
    goto/32 :goto_1d

    nop

    nop

    :goto_69
    check-cast v5, Ltkb;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

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

    :goto_6b
    invoke-virtual {v4}, Lsvw;->a()Lsvx;

    move-result-object v4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6c
    new-instance v7, Lswi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_6d
    const v5, 0x7fffffff

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_6e
    iput v1, v4, Lsqi;->b:I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v1, v4}, Lswd;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_70
    invoke-direct {v0, v3, v2}, Lswc;->23ce148e54b083367f51e25c7971761em(Lswn;Lsui;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v4, Lswb;

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_72
    iget-object v1, v1, Lswn;->g:Lsqi;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    sget-object v7, Lsvy;->b:Lsvx;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v3}, Lswb;->b()Lsvy;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_75
    if-eqz v1, :cond_d

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_76
    iget-object v3, v2, Lswh;->d:Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v2, Lsui;

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

    :goto_79
    check-cast v1, Lsqi;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v4, v5}, Lsvw;->b(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v0, 0x10

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

    :goto_7c
    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3}, Ltkb;->o()V

    :goto_7f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v5, v1}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v4, v0, Lswc;->e:Lswj;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_82
    check-cast v4, Lsqi;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_83
    const/4 v3, 0x0

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v3, Lswb;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_85
    iget-object v7, v3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    :cond_e
    :try_start_4
    iget-wide v1, v3, Lswh;->c:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v7, 0x1

    nop

    nop

    nop

    nop

    add-long/2addr v1, v7

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v3, Lswh;->c:J

    nop

    nop

    monitor-exit v4

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-wide v4, v7, Lswn;->d:J

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_88
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8a
    if-ge v1, v5, :cond_f

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2f

    nop

    nop

    :goto_8b
    invoke-static {v2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v2

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v7, Lswn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {v1, v2}, Lsvy;->a(Lsej;Lsdr;)Ljava/lang/Object;

    move-result-object v2

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

    nop

    nop
.end method

.method public final d(Ljava/util/logging/Level;)Z
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhuq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    return p0

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->g:Lhoh;

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

    :goto_6
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

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

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-gt p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object p0, p0, Lswc;->f:Ltxm;

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

    nop

    :goto_a
    check-cast p0, Lhuq;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    sget p0, Lhmy;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

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

    :goto_f
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method
