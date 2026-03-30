.class public final Lrag;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

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

    nop

    :goto_1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "(\\w+).*"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lrag;->a:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Lrpz;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lrpz;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "transform="

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Lrpz;->c(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    const v0, 0x1b

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "+"

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
