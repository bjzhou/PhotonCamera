.class final synthetic Luip;
.super Lucf;
.source "PG"

# interfaces
.implements Lubo;


# static fields
.field public static final a:Luip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    new-instance v0, Luip;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sput-object v0, Luip;->a:Luip;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Luip;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const-string v3, "createSegment"

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_b

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
    const-class v2, Luiq;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const-string v4, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v0 .. v5}, Lucf;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    move-object v3, p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Number;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Luix;->f()Luio;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Luix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v0 .. v5}, Luix;-><init>(JLuix;Luio;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_e
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v3, Luix;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
