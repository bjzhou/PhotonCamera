.class public final Lsyf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsyf;

.field public static final b:Lsyf;

.field public static final c:Lsyf;

.field public static final d:[Lsyf;


# instance fields
.field public final e:I

.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v1, Lsyf;->b:Lsyf;

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
    const v0, 0xc

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, v2, v3}, Lsyf;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    const-string v3, "RELIGHTING_PR_OPT_IN"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v2, Lsyf;->c:Lsyf;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2}, Lsyf;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lsyf;->d:[Lsyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    const-string v2, "RELIGHTING_PR_DEFAULT"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

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

    :goto_c
    sput-object v0, Lsyf;->a:Lsyf;

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

    :goto_d
    const-string v1, "RELIGHTING_NONE"

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

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    new-instance v1, Lsyf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    filled-new-array {v0, v1, v2}, [Lsyf;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lsyf;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Lsyf;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2, v3, v4}, Lsyf;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lsyf;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

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
    iput p2, p0, Lsyf;->e:I

    nop

    nop

    goto/32 :goto_2

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

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lsyf;->f:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
