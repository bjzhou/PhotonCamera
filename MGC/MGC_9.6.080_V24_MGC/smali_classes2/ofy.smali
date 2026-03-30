.class public final Lofy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Logb;

.field public static final b:[Logb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-array v1, v1, [Logb;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    sput-object v0, Lofy;->a:Logb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    aput-object v0, v1, v2

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

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

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
    sput-object v1, Lofy;->b:[Logb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    new-instance v0, Logb;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1, v2, v3}, Logb;-><init>(Ljava/lang/String;J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    :goto_11
    const-string v1, "CLIENT_TELEMETRY"

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
