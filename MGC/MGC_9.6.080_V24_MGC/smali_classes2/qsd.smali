.class final Lqsd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field static final b:Ljava/util/regex/Pattern;

.field static final c:Ljava/util/regex/Pattern;

.field static final d:Ljava/util/regex/Pattern;

.field static final e:Ljava/util/regex/Pattern;


# instance fields
.field f:Ljava/lang/Long;

.field g:Ljava/lang/Long;

.field h:Ljava/lang/Long;

.field i:Ljava/lang/Long;

.field j:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    sput-object v0, Lqsd;->a:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lqsd;->b:Ljava/util/regex/Pattern;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const-string v0, "VmSwap:\\s*(\\d+)\\s*kB"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

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

    :goto_6
    const-string v0, "VmRSS:\\s*(\\d+)\\s*kB"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "RssAnon:\\s*(\\d+)\\s*kB"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    const-string v0, "VmSize:\\s*(\\d+)\\s*kB"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lqsd;->e:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "VmHWM:\\s*(\\d+)\\s*kB"

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

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

    :goto_e
    sput-object v0, Lqsd;->d:Ljava/util/regex/Pattern;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    sput-object v0, Lqsd;->c:Ljava/util/regex/Pattern;

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
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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
.end method
