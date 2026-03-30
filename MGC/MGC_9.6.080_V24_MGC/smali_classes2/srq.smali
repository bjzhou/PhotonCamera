.class public final enum Lsrq;
.super Ljava/lang/Enum;
.source "PG"

# interfaces
.implements Lsrr;


# static fields
.field public static final enum a:Lsrq;

.field private static final synthetic b:[Lsrq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

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

    :goto_1
    sput-object v0, Lsrq;->a:Lsrq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    filled-new-array {v0}, [Lsrq;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lsrq;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lsrq;->b:[Lsrq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    new-instance v0, Lsrq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

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
    const-string v0, "INSTANCE"

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

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lsrq;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Lsrq;->b:[Lsrq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, [Lsrq;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lsrq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lj$/time/Instant;
    .locals 0

    goto/32 :goto_1

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
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const-string p0, "TimeSource.system()"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
