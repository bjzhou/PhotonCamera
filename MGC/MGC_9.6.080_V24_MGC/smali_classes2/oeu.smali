.class public Loeu;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static volatile a:I = -0x1

.field public static final b:[Lopl;

.field public static final c:[Ljava/lang/String;

.field public static final l:Lnar;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final m:Lolx;


# instance fields
.field public final d:Loff;

.field public final e:Ljava/lang/String;

.field public final f:Landroid/content/Context;

.field protected final g:Loez;

.field protected final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Lofi;

.field protected final k:Lqar;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Loeu;->m:Lolx;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    sput-object v1, Loeu;->b:[Lopl;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2, v0, v3}, Lnar;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    const-string v2, "ClearcutLogger.API"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_5
    invoke-direct {v0}, Loet;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    new-array v0, v0, [Ljava/lang/String;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Loeu;->c:[Ljava/lang/String;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v1, Loeu;->l:Lnar;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    new-array v1, v0, [Lopl;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    new-instance v0, Loet;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    new-instance v1, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    const v1, 0x2

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lofi;Loez;Loff;Lrtm;Lqar;)V
    .locals 2

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Loeu;->d:Loff;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Loeu;->j:Lofi;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    iput-object p2, p0, Loeu;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3
    invoke-direct {p5, p1, p7}, Lofo;-><init>(Landroid/content/Context;Lrtm;)V

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz p3, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Loeu;->f:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lolx;->Y(ZLjava/lang/Object;)V

    :goto_b
    goto/32 :goto_24

    nop

    nop

    :goto_c
    new-instance p5, Lofo;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

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

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_22

    nop

    :goto_10
    if-eqz p5, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p5, p0, Loeu;->g:Loez;

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    iput-object v0, p0, Loeu;->i:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lofj;->d:Lofj;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-direct {p6, p1}, Lofv;-><init>(Landroid/content/Context;)V

    :goto_19
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "Upload account name cannot be used with a deidentified or pseudonymous logger."

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

    :goto_1c
    if-eqz p6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x5

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

    :goto_1e
    iput-object p8, p0, Loeu;->k:Lqar;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p6, Lofv;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p4, v0}, Lofi;->a(Lofj;)Z

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
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

    :goto_24
    invoke-static {p4}, Loeu;->b(Lofi;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p3, p0, Loeu;->e:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method static final a(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

    nop

    goto/32 :goto_3

    nop

    nop

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

    nop

    goto/32 :goto_b

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1}, Lrpz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0}, Lrpz;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

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

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lrpz;

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

    :goto_d
    const-string v1, ", "

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static final b(Lofi;)V
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "piiLevelSet must be one of ZWIEBACK_ONLY, NO_RESTRICTIONS, or DEIDENTIFIED"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lofi;->b:Lofi;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lofi;->a:Lofi;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result p0

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
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    sget-object v0, Lofi;->c:Lofi;

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

    :goto_f
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final d(Ljava/util/ArrayList;)[I
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    aput v4, v0, v3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

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

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast v4, Ljava/lang/Integer;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_d
    add-int/lit8 v5, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    move v3, v2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    move v3, v5

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

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    goto :goto_12

    nop

    :goto_18
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    new-array v0, v0, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    if-eqz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x1f

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

    :goto_1d
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lofi;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lofi;->b:Lofi;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Loeu;->j:Lofi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
