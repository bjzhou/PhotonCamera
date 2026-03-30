.class public Lmxw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;
.implements Lnbg;


# static fields
.field private static final o:Lsdb;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lows;

.field public final c:Lnnk;

.field public final d:Loyn;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Landroid/content/res/Resources;

.field public j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

.field public k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

.field public l:Landroid/os/CountDownTimer;

.field public m:Z

.field public n:Lj$/time/Duration;

.field private final p:Loyn;

.field private q:Landroid/animation/ValueAnimator;

.field private final r:Lkjj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lmxw;->o:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const-string v0, "mxw"

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
.end method

.method public constructor <init>(Lkjj;Loyn;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

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

    :goto_1
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Lnnk;-><init>()V

    goto/32 :goto_13

    nop

    nop

    :goto_3
    iput-object v0, p0, Lmxw;->b:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_4
    new-instance p1, Lnnk;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lmxw;->a:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x13

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

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lmxw;->r:Lkjj;

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

    :goto_e
    iput-object p2, p0, Lmxw;->p:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

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

    :goto_11
    const/4 v0, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lmxw;->c:Lnnk;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v1, p0, Lmxw;->m:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    new-instance v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_19
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lmxw;->n:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v0, p0, Lmxw;->d:Loyn;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method static bridge synthetic t(Lmxw;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lmxw;->m:Z

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public static final u(Lj$/time/Duration;)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    const v0, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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

    :goto_5
    div-float/2addr p0, v0

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

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

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    const/high16 v0, 0x447a0000    # 1000.0f

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    double-to-long v0, v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    float-to-double v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lj$/time/Duration;->isZero()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    long-to-float p0, v0

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
.end method

.method public static final v(I)Lmxz;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lmxz;->a:Lmxz;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lmxz;->b:Lmxz;

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
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lmxz;->c:Lmxz;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lmxz;->d:Lmxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const/4 v0, 0x3

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

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public static final w(Lmxz;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmxz;->ordinal()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/4 v0, 0x3

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

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private static final y(Lmxz;)I
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    const p0, 0x7f08022b

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const p0, 0x7f0801fb

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    const p0, 0x7f08022a

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

    :goto_4
    return p0

    nop

    nop

    :goto_5
    const/4 v0, 0x2

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

    :goto_6
    const p0, 0x7f080229

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lmxz;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x3

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

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop
.end method


# virtual methods
.method public final a()Lmxz;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    const v1, 0x16

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

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Lmxw;->v(I)Lmxz;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    const v0, 0x2

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    double-to-int p0, v0

    nop

    goto/32 :goto_9

    nop

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

    goto/32 :goto_b

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

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

    :goto_1
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmxw;->b:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final d(Lj$/time/Duration;)Ljava/lang/String;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    const-string p1, "Displayed seconds must be nonnegative"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p0, ""

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_19

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    const v0, 0x7f1406f2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    :goto_16
    invoke-static {p1}, Lmxw;->u(Lj$/time/Duration;)J

    move-result-wide v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    if-gez p1, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long p1, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->i(Lnbe;Lnbh;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Z)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p1, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setVisibility(I)V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setAlpha(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h(Z)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Landroid/animation/ValueAnimator;

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    :goto_b
    const/4 p1, 0x0

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

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lmxz;)V
    .locals 13

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1
    iget-object v3, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v11, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_0
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v6, Lmxz;->b:Lmxz;

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

    :goto_4
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, v2, Lgjw;->e:Loyd;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_7
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, v9}, Lmjv;->J(Ltkb;)V

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

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

    :goto_c
    iget-object v2, v2, Lgjw;->p:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v8, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    iget v3, v2, Lskd;->d:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v6}, Lmxz;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast v8, Ljava/lang/Float;

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

    :goto_11
    iput v2, v3, Lslk;->b:I

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

    nop

    :goto_12
    if-ne v8, v4, :cond_2

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v3, v2, Lskd;->ar:Lslk;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    invoke-interface {v2, v6}, Loyn;->a(Ljava/lang/Object;)V

    :goto_15
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v2, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v7, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v2, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v6}, Lgjw;->u(Lj$/time/Duration;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->isEnabled()Z

    move-result v7

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

    nop

    :goto_1b
    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_1d
    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v3}, Lmxz;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v6, Lgkh;->a:Lgkh;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_15

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v2, Loxv;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_25
    check-cast v2, Lgjw;

    nop

    nop

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

    :goto_26
    iget-object v2, v2, Lgjw;->v:Lnne;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v2, Lgjw;->h:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_29
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    iput v8, v3, Lslk;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_2b
    iput v10, v11, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_2c
    move v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2e
    iget-object v3, v10, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

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

    nop

    :goto_30
    check-cast v6, Lj$/time/Duration;

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

    :goto_31
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_32
    or-int/2addr v3, v4

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

    :goto_33
    check-cast v0, Lgjw;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_34
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v11, Lskd;

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_36
    check-cast v2, Lgjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_37
    if-eqz v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v2, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v7, v6, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_6
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_15

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_c3

    nop

    nop

    :goto_3d
    iget-object v1, v1, Lgjw;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_3e
    check-cast v2, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v1, v7}, Lgjw;->D(ZI)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget v2, v2, Lsob;->T:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_9b

    nop

    nop

    :goto_42
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v1, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v4, 0x10000

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_45
    invoke-virtual {v2, p1}, Lmxw;->o(Lmxz;)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v1, Ljava/lang/Boolean;

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

    nop

    :goto_47
    goto/16 :goto_67

    nop

    :goto_48
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v9}, Ltkb;->o()V

    :goto_4a
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_4b
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_7
    goto/32 :goto_9c

    nop

    :goto_4c
    iget-object v2, v2, Lgjw;->q:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4d
    invoke-interface {v2, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v2, Lgjw;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v10}, Ltkg;->m()Ltkb;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v8}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v2, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_53
    return-void

    nop

    :goto_54
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v10}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_57
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_58
    if-eqz v2, :cond_9

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_9
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v3, 0x5

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput v3, v12, Lslk;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    or-int/2addr v3, v5

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_5f
    move v3, v4

    nop

    nop

    :goto_60
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-ne v2, v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v2, Lgjw;

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_63
    const-string p1, "OFF option should never be selected for long exposure."

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_65
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v6, Lgkh;->b:Lgkh;

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_6a
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v6, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_6c
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-static {v2}, Lnnb;->b(Lnne;)Lsob;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6e
    iput v3, v2, Lskd;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6f
    check-cast v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_70
    or-int/2addr v10, v5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v6, v2, Lgjw;->E:Lmjv;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v2, v2, Lgjw;->c:Loyn;

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

    nop

    nop

    :goto_75
    check-cast v12, Lslk;

    nop

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

    :goto_76
    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v6, v2, Lgjw;->h:Loyn;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v9}, Ltkg;->m()Ltkb;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_79
    invoke-virtual {v10}, Ltkb;->o()V

    :goto_7a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v3, Lslk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_7c
    check-cast v2, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_7d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    check-cast v3, Lslk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_80
    if-nez v0, :cond_b

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

    :cond_b
    goto/32 :goto_21

    nop

    nop

    :goto_81
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v6, v6, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_83
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_84
    if-ne v2, v3, :cond_c

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/16 :goto_60

    nop

    nop

    :goto_86
    goto/32 :goto_5a

    nop

    nop

    :goto_87
    iget-object v2, v2, Lgjw;->c:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

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

    :goto_89
    check-cast v2, Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_8a
    or-int/2addr v2, v7

    nop

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

    :goto_8b
    iget-object p0, p0, Lmxw;->a:Ljava/util/Set;

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

    :goto_8c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8d
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v3, Lslk;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_8f
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

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

    :goto_90
    iput v4, v3, Lslk;->b:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_91
    iput v2, v3, Lslk;->e:I

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {v2, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_94
    if-ne v8, v3, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    :cond_d
    goto/32 :goto_98

    nop

    nop

    :goto_95
    if-nez v6, :cond_e

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v11, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v11, v10, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_98
    move v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget v2, v3, Lslk;->b:I

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast v2, Lskd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_a1
    const/4 v7, 0x4

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v1, v0, Lgjw;->c:Loyn;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_a4
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_a5
    if-nez v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_9f

    nop

    nop

    :goto_a6
    check-cast v2, Lgjw;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v2, v2, Lgjw;->c:Loyn;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const v1, 0x1d

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p1}, Lmxz;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_aa
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_ab
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_ac
    iget v10, v10, Lskc;->aG:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_ad
    sget-object v10, Lslk;->a:Lslk;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_53

    nop

    nop

    :goto_b1
    sget-object v9, Lskd;->a:Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v2, v2, Lgjw;->j:Loyn;

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

    :goto_b3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    sget-object v3, Lmxz;->d:Lmxz;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iput v3, v12, Lslk;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v6, v2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v2, v6}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v2, v3}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/16 :goto_60

    nop

    :goto_bb
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v3, v10, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-eqz v11, :cond_10

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_10
    goto/32 :goto_1c

    nop

    nop

    :goto_bf
    if-nez v6, :cond_11

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d1

    nop

    nop

    :goto_c0
    or-int/2addr v4, v5

    nop

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

    nop

    :goto_c1
    if-nez v8, :cond_12

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :cond_12
    goto/32 :goto_d

    nop

    nop

    :goto_c2
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_c3
    iget-object v2, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_c4
    check-cast v2, Lgjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_c5
    if-ne v1, v2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_c7
    iget-object v2, v2, Lgjw;->v:Lnne;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_60

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_ca
    sget-object v10, Lskc;->an:Lskc;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_cb
    iget v3, v12, Lslk;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_cc
    iget v5, v3, Lslk;->b:I

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-eqz v3, :cond_14

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_64

    nop

    nop

    :goto_ce
    check-cast v1, Loxv;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_cf
    iget-object v11, v9, Ltkb;->b:Ltkg;

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

    nop

    nop

    :goto_d0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {p1}, Lmxz;->ordinal()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    move-object v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_d3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget v10, v11, Lskd;->b:I

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    sget-object v6, Lnne;->k:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_d6
    check-cast v1, Loxv;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_d7
    goto/16 :goto_15

    nop

    :goto_d8
    goto/32 :goto_73

    nop

    nop

    :goto_d9
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v2, v2, Lgjw;->C:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_db
    iget-object v6, v2, Lgjw;->C:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object v2, v9, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const v7, 0x7f14008e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_de
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

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

    nop

    nop

    :goto_df
    invoke-virtual {v11}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_e0
    iput v10, v11, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lkjj;->g(Landroid/os/VibrationEffect;)V

    goto/32 :goto_d

    nop

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

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

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

    nop

    :goto_3
    iget-object p0, p0, Lmxw;->r:Lkjj;

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

    :goto_4
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1, v2}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IF)Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_e

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 v2, 0x3f000000    # 0.5f

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
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(D)V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
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

    nop

    :goto_4
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_b
    iget-object v2, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_14

    nop

    nop

    :goto_e
    invoke-virtual {p1, p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p2, p0, Lmxw;->n:Lj$/time/Duration;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_13
    const-wide/16 v0, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p2}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v1, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l(ZZ)V

    goto/32 :goto_12

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final i(Lmxz;Lmya;)V
    .locals 4

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_10

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lmya;->a:Lmya;

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    double-to-int p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "Not a valid primary tick."

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_12
    if-eq p2, p1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_57

    nop

    nop

    :goto_14
    goto/32 :goto_56

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v2

    nop

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

    :goto_17
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b()Landroid/widget/TextView;

    move-result-object v0

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

    :goto_18
    iget-object p2, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lmya;->a:Lmya;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1b
    iput-wide v2, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Lmxw;->o(Lmxz;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    :goto_22
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v2, v3, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(DF)V

    :goto_26
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_27
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    :goto_29
    iget-wide v0, p1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

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
    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2c
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_21

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    :goto_2e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lmxz;->ordinal()I

    move-result v0

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

    nop

    :goto_30
    int-to-double v2, v2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31
    iput-wide v2, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v2

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_33
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v2, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_35
    invoke-static {p1}, Lmxw;->w(Lmxz;)I

    move-result p1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_37
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_38
    iget v2, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    nop

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

    :goto_39
    invoke-virtual {p1, v0, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k(Landroid/widget/TextView;Lmya;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object p1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3b
    double-to-int v2, v2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_3c
    if-eq p1, v2, :cond_4

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

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b(D)D

    move-result-wide v0

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v0, 0x15

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p2, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_45
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_46
    if-eq p2, p1, :cond_5

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    :goto_47
    goto/16 :goto_10

    nop

    nop

    :goto_48
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_49
    if-lt p1, v2, :cond_6

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

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_4a
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4c
    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_7

    nop

    goto/32 :goto_9

    nop

    :cond_7
    goto/32 :goto_8

    nop

    :goto_4e
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-eq p2, p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1, v2, v3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p1}, Lmxw;->v(I)Lmxz;

    move-result-object p1

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

    :goto_54
    iput-wide v2, v1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

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

    :goto_55
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object p1, Lmya;->b:Lmya;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_59
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

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
.end method

.method public final j(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final k(Landroid/widget/TextView;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, p1, v0}, Lmxr;-><init>(Lmxw;Landroid/widget/TextView;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_13

    nop

    :goto_c
    goto/32 :goto_17

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->c()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->f()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->e()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x3

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lmxr;

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

    :goto_19
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_13

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final l(Lj$/time/Duration;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    invoke-virtual {p0, p1, v0}, Lmxw;->m(Lj$/time/Duration;Ljava/lang/String;)V

    goto/32 :goto_2

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
.end method

.method public final m(Lj$/time/Duration;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, v0}, Lmxw;->n(Lj$/time/Duration;Ljava/lang/String;Z)V

    goto/32 :goto_2

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

.method public final n(Lj$/time/Duration;Ljava/lang/String;Z)V
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p3, v0}, Lmxw;->s(Lmxz;IZ)V

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v1, 0x17

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

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

    :goto_4
    const/4 p3, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lmxw;->p(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1e

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->isEnabled()Z

    move-result p3

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

    :goto_b
    if-eqz p1, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-boolean p1, p0, Lmxw;->m:Z

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Lmxw;->v(I)Lmxz;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p3, :cond_3

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

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    double-to-int p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f
    iget-object p3, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_20
    goto/32 :goto_17

    nop

    nop

    :goto_21
    iput-object p1, p0, Lmxw;->n:Lj$/time/Duration;

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

    nop

    nop
.end method

.method public final o(Lmxz;)V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Cannot update to disabled or inactive option: %s"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmxw;->p:Loyn;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->isEnabled()Z

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v2

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

    :goto_7
    iget-object v2, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p0, Lscz;

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

    :goto_9
    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Lmxw;->y(Lmxz;)I

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-double v0, v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    :goto_10
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lmxw;->o:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-static {p1}, Lmxw;->y(Lmxz;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v2, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e(D)V

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    const v1, 0x12

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

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_1d
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    double-to-int v3, v0

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
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v0, 0x12a5

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

    :goto_24
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_28
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_2d
    invoke-static {p1}, Lmxw;->w(Lmxz;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(Z)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lmxw;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lmxw;->n:Lj$/time/Duration;

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_5
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6
    goto :goto_13

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7f14037f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    invoke-static {p1}, Lmxw;->u(Lj$/time/Duration;)J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_13

    nop

    :goto_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7f14008a

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lmxw;->i:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_e
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lmxw;->i:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    const v1, 0x7f14049d

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lmxw;->e:Ljava/lang/String;

    nop

    :goto_13
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x7f1400a2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lmxw;->i:Landroid/content/res/Resources;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_18
    goto :goto_13

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ne v0, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1e
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    :goto_23
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getProgress()I

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    if-ne v0, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lmxw;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lmxw;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_30
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, p0, Lmxw;->i:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_24

    nop

    nop

    :goto_36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3a
    if-ne v0, v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_3c
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

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

    :goto_3f
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_13

    nop

    nop

    :goto_43
    goto/32 :goto_12

    nop

    nop

    :goto_44
    const v1, 0x1c

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final q()Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 p0, 0x1

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

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

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

    :goto_5
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->getVisibility()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final r(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V
    .locals 1

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lmxw;->q:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p9, p10}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    double-to-float p1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    new-instance p3, Lndf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p5, p6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p4, 0x0

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

    :goto_b
    invoke-virtual {p2, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    :goto_d
    aput p2, p3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-direct {p3, p0, p11, p1}, Lndf;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    new-array p3, p3, [F

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, p8}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

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

    nop

    nop

    nop

    :goto_12
    const/4 p1, 0x1

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

    :goto_13
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    double-to-float p2, p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aput p1, p3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    iget-object v0, p0, Lmxw;->q:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public final s(Lmxz;IZ)V
    .locals 12

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Lmxw;->d(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x2

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
    const v0, 0x4

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

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    move-object v0, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j(Ljava/lang/String;)V

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-direct {v7}, Leac;-><init>()V

    goto/32 :goto_28

    nop

    nop

    :goto_b
    const/4 v11, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lmxw;->l:Landroid/os/CountDownTimer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x1

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

    :goto_10
    iput-boolean p1, p0, Lmxw;->m:Z

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    goto/32 :goto_15

    nop

    nop

    :goto_12
    invoke-static {p0}, Lmxs;->a(Lmxw;)V

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v8, p0, v3, v4, p1}, Lmxu;-><init>(Lmxw;DI)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lmxw;->w(Lmxz;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

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

    :goto_17
    if-eq p2, p1, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v7, Leac;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    invoke-virtual/range {v0 .. v11}, Lmxw;->r(DDJLandroid/animation/TimeInterpolator;Landroid/animation/AnimatorListenerAdapter;JI)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
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

    :goto_1b
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v3, v4}, Lmxw;->h(D)V

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    :goto_21
    iget-wide v1, p1, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    const-wide/16 v5, 0xfa

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

    :goto_23
    iget-object p1, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_27
    if-eq p2, p1, :cond_4

    nop

    goto/32 :goto_1d

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-wide/16 v9, 0xc8

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

    nop

    nop

    :goto_29
    int-to-double v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object p3, Lj$/time/Duration;->ZERO:Lj$/time/Duration;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v8, Lmxu;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop
.end method

.method public final x(Z)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    const v1, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->o()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_c

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_13
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->a:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    const v0, 0x12

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->h(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->l(ZZ)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

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

    nop

    :goto_1a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method
