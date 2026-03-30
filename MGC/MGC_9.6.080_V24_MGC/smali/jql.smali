.class Ljql;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljqo;
.implements Loom;


# static fields
.field public static final a:Lsdb;

.field public static final b:I

.field public static final c:I

.field public static final d:Landroid/net/Uri;


# instance fields
.field public e:Z

.field public f:Landroid/location/Location;

.field public g:J

.field public h:J

.field public i:Z

.field public final j:Loox;

.field private final k:Ljava/util/concurrent/Executor;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto :goto_1

    nop

    nop

    :catch_0
    move-exception v0

    nop

    :try_start_0
    sget-object v1, Ljql;->a:Lsdb;

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    const/16 v1, 0x9e9

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Failed to remove location listeners. "

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, p0, Ljql;->e:Z

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Ljql;->i:Z

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Ljql;->e:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Ljql;->j:Loox;

    nop

    nop

    nop

    nop

    const-class v1, Loom;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

    const-string v2, "Listener type must not be null"

    nop

    nop

    nop

    invoke-static {v1, v2}, Lolx;->ah(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "Listener type must not be empty"

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lolx;->af(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Loix;

    nop

    nop

    invoke-direct {v2, p0, v1}, Loix;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x972

    nop

    nop

    nop

    invoke-virtual {v0, v2, v1}, Lohe;->e(Loix;I)Loqy;

    move-result-object v0

    nop

    nop

    new-instance v1, Lnz;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lnz;-><init>(I)V

    new-instance v2, Loou;

    nop

    invoke-direct {v2}, Loou;-><init>()V

    invoke-virtual {v0, v1, v2}, Loqy;->a(Ljava/util/concurrent/Executor;Loqo;)Loqy;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    sput v0, Ljql;->b:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lnzk;->G(I)I

    move-result v0

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput v0, Ljql;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    sput-object v0, Ljql;->a:Lsdb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

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

    :goto_7
    sput-object v0, Ljql;->d:Landroid/net/Uri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const-string v0, "content://com.google.settings/partner"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "jql"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Lnzk;->G(I)I

    move-result v0

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

    :goto_b
    const/16 v0, 0x3c

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ljql;->j:Loox;

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

    :goto_2
    iput-object p2, p0, Ljql;->k:Ljava/util/concurrent/Executor;

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

    :goto_3
    new-instance v0, Loox;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Ljql;->e:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p1}, Loox;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d(Landroid/location/Location;)Z
    .locals 5

    goto/32 :goto_22

    nop

    nop

    :goto_0
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2
    int-to-long v3, p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const/16 v3, 0x9eb

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

    :goto_4
    const/16 v2, 0x9ea

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

    :goto_5
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_6
    cmp-long p0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_39

    nop

    nop

    :goto_8
    const-string v1, "Fused location API did not provide a location."

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_9
    sub-long/2addr v1, v3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_a
    const/16 v1, 0x9ec

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-interface {p0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_d
    const/16 p0, 0x708

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    invoke-static {p0}, Lnzk;->G(I)I

    move-result p0

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

    :goto_19
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, v3}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Ljql;->a:Lsdb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-interface {v1, v2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_2
    :goto_1e
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x13

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    if-eqz p0, :cond_4

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

    :cond_4
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_5
    goto/32 :goto_38

    nop

    :goto_25
    const-string v2, "Fused location API provided a location that is probably incorrect: %s"

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

    :goto_26
    if-eqz v1, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_6
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_28
    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_29
    const-string v2, "Fused location API provided a location from %g seconds ago. Ignoring location."

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
    return p0

    nop

    :goto_2b
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v0

    nop

    :goto_2d
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v2}, Lnzk;->D(J)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

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

    nop

    nop

    :goto_32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v1, v2}, Lnzk;->I(J)J

    move-result-wide v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_8
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_36
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    invoke-interface {p0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_45

    nop

    :goto_39
    goto/32 :goto_41

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3b
    sget-object p0, Ljql;->a:Lsdb;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3c
    cmpl-double v1, v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3d
    sget-object v1, Ljql;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_40
    cmpl-double v1, v1, v3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_41
    const/4 v0, 0x0

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

    :goto_42
    return v0

    nop

    nop

    :goto_43
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_44
    return v0

    nop

    nop

    :goto_45
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Ljql;->f:Landroid/location/Location;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2, v3}, Loqy;->i(Ljava/util/concurrent/Executor;Loqt;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    if-ltz v1, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    const v0, 0x1f

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

    :goto_a
    new-instance v3, Ljqj;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    iput-object v1, p0, Ljql;->f:Landroid/location/Location;

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, p0, v0}, Ljqj;-><init>(Ljql;Lsuu;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    cmp-long v1, v1, v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Ljql;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    :goto_17
    iget-wide v3, p0, Ljql;->g:J

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-long/2addr v1, v3

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

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v3, 0x3e8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Ljql;->j:Loox;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    return-object v0

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1}, Loox;->a()Loqy;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    iget-object v1, p0, Ljql;->f:Landroid/location/Location;

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

    :goto_24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(Landroid/location/Location;)V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int v0, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    iget-wide v4, p0, Ljql;->h:J

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p1}, Ljql;->d(Landroid/location/Location;)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_6
    invoke-static {v1}, Lnzk;->G(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    cmpg-float v0, v6, v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljql;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_20

    nop

    nop

    :goto_a
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v1, 0x42480000    # 50.0f

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    if-gez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_13
    const v0, 0x13

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

    :goto_14
    int-to-float v1, v1

    nop

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

    nop

    :goto_15
    goto/16 :goto_1

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    :goto_17
    int-to-long v4, v4

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v0, :cond_3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_1c
    sget v4, Ljql;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    cmp-long v0, v2, v4

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

    :goto_1f
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_20
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_21
    div-float/2addr v0, v1

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

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    goto/16 :goto_16

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sub-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0xa

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

    :goto_27
    long-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_28
    iget-wide v2, p0, Ljql;->h:J

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-long/2addr v2, v4

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

    :goto_2a
    mul-float/2addr v0, v1

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

    :goto_2b
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean p1, p0, Ljql;->e:Z

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    const/4 p1, 0x0

    nop

    iput-boolean p1, p0, Ljql;->i:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-direct {p0}, Ljql;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0, v1}, Loqy;->i(Ljava/util/concurrent/Executor;Loqt;)V

    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-direct {v1, p0}, Ljqk;-><init>(Ljql;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Ljql;->j:Loox;

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

    :goto_e
    invoke-virtual {p1}, Loox;->a()Loqy;

    move-result-object p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ljql;->k:Ljava/util/concurrent/Executor;

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

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljqk;

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
