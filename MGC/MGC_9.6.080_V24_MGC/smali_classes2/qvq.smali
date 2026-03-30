.class final Lqvq;
.super Lqvy;
.source "PG"


# direct methods
.method public constructor <init>(Lqvw;Ljava/lang/String;Ljava/lang/Boolean;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lqvy;-><init>(Lqvw;Ljava/lang/String;Ljava/lang/Object;Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p1, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    const-string p1, "PhenotypeFlag"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lovz;->d:Ljava/util/regex/Pattern;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    return-object p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_14
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x16

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    sget-object v1, Lovz;->c:Ljava/util/regex/Pattern;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, p0, v0}, Lqvg;->e(Ljava/lang/Object;Lqvy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1f
    move-object v0, p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    instance-of v0, p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_2

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_4

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v0, "Invalid boolean value for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method
