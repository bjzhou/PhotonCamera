.class public final Lpcw;
.super Ljava/util/logging/Handler;
.source "PG"


# static fields
.field public static final a:Lpcw;


# instance fields
.field private final b:Lowu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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
    sput-object v0, Lpcw;->a:Lpcw;

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
    new-instance v0, Lpcw;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lpcw;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private constructor <init>()V
    .locals 1

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

    :goto_1
    sget-object v0, Lowu;->b:Lowu;

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

    :goto_2
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lpcw;->b:Lowu;

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
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final flush()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final publish(Ljava/util/logging/LogRecord;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p1, v0, v2}, Loxl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    :goto_4
    const/16 v2, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpcw;->b:Lowu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

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

    :goto_10
    rem-int v0, v0, v1

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

    :goto_11
    new-instance v1, Loxl;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method
