.class public final Lqvg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Lqvg;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lqvg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    const/4 v0, 0x0

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lqvf;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    :goto_6
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    iput-object v0, p0, Lqvg;->c:Ljava/lang/Object;

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    iput-object p1, p0, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lqvf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    :goto_12
    check-cast v0, Landroid/database/ContentObserver;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p1, Lovz;->a:Landroid/net/Uri;

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
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iput-object p1, p0, Lqvg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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

    nop
.end method

.method static declared-synchronized a()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-class v0, Lqvg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0xe

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Lqvg;->a:Lqvg;

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    iget-object v2, v1, Lqvg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    iget-object v1, v1, Lqvg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    check-cast v2, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lqvg;->a:Lqvg;

    nop

    nop

    nop

    iget-object v2, v2, Lqvg;->c:Ljava/lang/Object;

    nop

    check-cast v2, Landroid/database/ContentObserver;

    nop

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    sput-object v1, Lqvg;->a:Lqvg;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_a
    throw v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static b(Lpyd;Landroid/net/Uri;Lrss;)Lpyd;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lpyd;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_4
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_8
    sget-object v1, Lpye;->a:Lpye;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, v1, Ltkb;->b:Ltkg;

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

    :goto_a
    const v0, 0x6

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

    :goto_b
    invoke-virtual {p0}, Lpyd;->b()Ltll;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_d
    iput v4, v3, Lpye;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v2, Lpye;

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

    :goto_f
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

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

    :goto_10
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p2, Loch;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    :goto_16
    iget p2, v2, Lpye;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1a
    check-cast v3, Lpye;

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

    nop

    :goto_1b
    iput p2, v2, Lpye;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, p0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_48

    nop

    nop

    :goto_1e
    check-cast p2, Lpye;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p0, Lpyd;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_21
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_22
    iget-object p0, p1, Ltkb;->b:Ltkg;

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

    :goto_23
    check-cast p1, Ltkb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p1, Ltkb;->b:Ltkg;

    nop

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

    :goto_25
    iput-object v2, v3, Lpye;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p2, v2, Lpye;->d:Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, p1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object p1

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

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, p2, Loch;->b:J

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p2, Loch;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lpyd;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_35
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v4, v3, Lpye;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_37
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_39
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lpyd;->b:Ltll;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3d
    or-int/lit8 v4, v4, 0x1

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

    :goto_3e
    if-eqz p0, :cond_3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Ltkb;->i()Ltkg;

    move-result-object p0

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

    :goto_40
    invoke-static {v2, v3, p2}, Ltng;->c(JI)Ltmm;

    move-result-object p2

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_42
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_c

    nop

    nop

    :goto_45
    or-int/lit8 p2, p2, 0x2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_46
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lpyd;->b()Ltll;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_4a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4c
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static c(Lpyd;Landroid/net/Uri;)Lrss;
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, v0, v1}, Loch;-><init>(Ljava/lang/String;J)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lpye;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p0, Loch;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_8
    iget-object v0, p0, Lpyd;->b:Ltll;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Ltng;->d(Ltmm;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lpyd;->b:Ltll;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v0, p0, Ltmm;->b:J

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_14
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object p0, Ltmm;->a:Ltmm;

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lpye;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lpye;->d:Ltmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-static {p0}, Lj$/util/DesugarCollections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

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

    :goto_1d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v1, 0x7

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method static synthetic e(Ljava/lang/Object;Lqvy;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lqvy;->d()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    :goto_a
    const-string p1, ": "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final d(Landroid/net/Uri;)Lsui;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0, p0}, Lrbs;->b(Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

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

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p1, v1}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0xe

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lqvg;->b:Ljava/lang/Object;

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    iget-object p1, p0, Lqvg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Lrbs;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lqby;

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

    :goto_10
    const v1, 0x20

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
.end method
