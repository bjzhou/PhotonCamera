.class final Lbat;
.super Luci;
.source "PG"

# interfaces
.implements Luaz;


# static fields
.field public static final a:Lbat;


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
    new-instance v0, Lbat;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lbat;->a:Lbat;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lbat;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 27

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Lcen;->d(J)J

    move-result-wide v5

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

    :goto_1
    move-wide/from16 v17, v25

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

    nop

    nop

    :goto_2
    sget-wide v25, Lcel;->b:J

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

    :goto_3
    new-instance v0, Lbas;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-wide v13, Lcel;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Lcen;->d(J)J

    move-result-wide v15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const-wide v0, 0xff018786L

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    move-wide v11, v13

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    const-wide v0, 0xff3700b3L

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide/from16 v19, v21

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    move-wide/from16 v23, v21

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Lcen;->d(J)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0, v1}, Lcen;->d(J)J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    sget-wide v21, Lcel;->a:J

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const-wide v0, 0xff03dac6L

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

    :goto_12
    invoke-static {v0, v1}, Lcen;->d(J)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    move-object v2, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {v2 .. v26}, Lbas;-><init>(JJJJJJJJJJJJ)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x13

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-wide v0, 0xff6200eeL

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide v0, 0xffb00020L

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop
.end method
