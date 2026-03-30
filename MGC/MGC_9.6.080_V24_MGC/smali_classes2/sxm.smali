.class public final Lsxm;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsxm;

.field public static final b:Lsxm;

.field public static final c:Lsxm;

.field public static final d:[Lsxm;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Lsxm;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_f

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    sput-object v1, Lsxm;->b:Lsxm;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "kUnknown"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    :goto_5
    new-instance v2, Lsxm;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    new-instance v1, Lsxm;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    sput-object v2, Lsxm;->c:Lsxm;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v4, 0x1

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

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lsxm;->d:[Lsxm;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    sput-object v0, Lsxm;->a:Lsxm;

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

    :goto_10
    invoke-direct {v2, v3, v4}, Lsxm;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, -0x1

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

    :goto_13
    const/4 v3, 0x0

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

    :goto_14
    const v1, 0x13

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

    nop

    :goto_15
    new-instance v0, Lsxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, v2, v3}, Lsxm;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_18
    const-string v2, "kAuto"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    filled-new-array {v0, v1, v2}, [Lsxm;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    const-string v3, "kManual"

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

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsxm;->f:Ljava/lang/String;

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

    :goto_1
    iput p2, p0, Lsxm;->e:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lsxm;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
