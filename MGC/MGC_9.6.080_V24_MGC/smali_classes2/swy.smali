.class public final Lswy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lswy;

.field public static final b:Lswy;

.field public static final c:Lswy;

.field public static final d:Lswy;

.field private static final f:[Lswy;


# instance fields
.field public final e:I

.field private final g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0, v1, v2, v3}, [Lswy;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    new-instance v0, Lswy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v4, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->wpyRDTuBSXZV:Ljava/lang/String;

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

    :goto_5
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x2

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

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, v2, v3}, Lswy;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3, v4, v5}, Lswy;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    const-string v2, "kIdle"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lswy;->a:Lswy;

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

    nop

    :goto_d
    new-instance v3, Lswy;

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

    :goto_e
    const-string v3, "kStart"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-direct {v2, v3, v4}, Lswy;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_11

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_11
    sput-object v2, Lswy;->c:Lswy;

    nop

    goto/32 :goto_d

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

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    const-string v1, "kUnknown"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    new-instance v1, Lswy;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    :goto_19
    invoke-direct {v0, v1, v2}, Lswy;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v1, Lswy;->b:Lswy;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    const/4 v3, 0x0

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

    :goto_1c
    new-instance v2, Lswy;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    sput-object v0, Lswy;->f:[Lswy;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    sput-object v3, Lswy;->d:Lswy;

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

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lswy;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lswy;->e:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static a(I)Lswy;
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    aget-object v0, v0, p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_7
    if-eq v3, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const-class v1, Lswy;

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

    :goto_b
    iget v3, v0, Lswy;->e:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    if-gez p0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-static {p0, v1}, Lsyb;->b(ILjava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x5

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

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    sget-object v0, Lswy;->f:[Lswy;

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

    :goto_1c
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Lswy;->f:[Lswy;

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

    :goto_1f
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    if-lt v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_21
    iget v3, v0, Lswy;->e:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_22
    if-lt p0, v2, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_23
    if-ne v3, p0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lswy;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
