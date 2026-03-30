.class public final Lgsb;
.super Lgsa;
.source "PG"


# static fields
.field public static final synthetic c:I

.field private static final d:J

.field private static final e:J


# instance fields
.field final b:Lneh;

.field private final f:Llyv;

.field private final g:Lixe;

.field private final h:Lgvg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    const-wide/16 v2, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    div-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-wide v0, Lgsb;->e:J

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

    :goto_4
    const-wide/16 v2, 0xa

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

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

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

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
    add-int v0, v0, v1

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    sput-wide v0, Lgsb;->d:J

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

    :goto_d
    div-long/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Lixe;Lgvg;Llyv;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p4, p3}, Lkfh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgsb;->g:Lixe;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lgsb;->f:Llyv;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    const/4 p3, 0x1

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

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lkfh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput p1, p2, Lnei;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lgsa;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Lgsb;->h:Lgvg;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x7f140767

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iput-object p1, p2, Lnei;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    new-instance p2, Lnei;

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

    nop

    :goto_e
    const/16 p1, 0xbb8

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p2}, Lnei;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_10
    const/4 p1, 0x5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iput-object p3, p2, Lnei;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    iput p1, p2, Lnei;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lgsb;->b:Lneh;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    iput-object p1, p2, Lnei;->d:Lneg;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Lnei;->a()Lneh;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lgsb;->h:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    sub-long/2addr v0, v2

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

    :goto_4
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Lixe;->a(Lixf;)Lpci;

    move-result-object p0

    nop

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

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    sget-wide v2, Lgsb;->d:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    sget-wide v2, Lgsb;->e:J

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Lgvg;->k(Lgst;)Lows;

    move-result-object p1

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

    :goto_10
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-lez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lgsb;->f:Llyv;

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

    :goto_15
    iget-object v0, p0, Lgsb;->g:Lixe;

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

    :goto_16
    check-cast p1, Ljava/lang/Long;

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

    :goto_17
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_1b
    sget-object v0, Lgst;->b:Lgst;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_1e
    cmp-long p1, v0, v2

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

    :goto_1f
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_21
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lgsb;->b:Lneh;

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
    sget-object v1, Llyr;->X:Llze;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    check-cast v0, Ljava/lang/Boolean;

    nop

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
.end method

.method public final f(Lgqg;)Z
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-eq p0, p1, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Loze;->c:Loze;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    iget-object p0, p1, Lgqg;->c:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
