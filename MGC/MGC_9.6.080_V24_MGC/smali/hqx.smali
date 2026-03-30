.class public final Lhqx;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lj$/time/Duration;

.field private static final b:Lryh;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v4, "\'VID_SNAP\'_yyyyMMdd_HHmmss"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    const-string v12, "\'CINEMATIC_PAN\'_yyyyMMdd_HHmmss"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    sget-object v3, Llxo;->p:Llxo;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    sget-object v11, Llxo;->q:Llxo;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    sput-object v0, Lhqx;->b:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v7, Llxo;->t:Llxo;

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

    :goto_a
    add-int v0, v0, v1

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

    nop

    :goto_b
    const-string v8, "\'10-BIT_HDR\'_yyyyMMdd_HHmmss"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0xa

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Llxo;->j:Llxo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

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
    goto/32 :goto_c

    nop

    nop

    :goto_11
    const-string v2, "\'VID\'_yyyyMMdd_HHmmss"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_13
    sget-object v5, Llxo;->n:Llxo;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    sget-object v9, Llxo;->s:Llxo;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v14, "\'VIDEO_NIGHT_SIGHT\'_yyyyMMdd_HHmmss"

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

    :goto_16
    sget-object v13, Llxo;->C:Llxo;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    sput-object v0, Lhqx;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    const-string v10, "\'CINEMATIC_BLUR\'_yyyyMMdd_HHmmss"

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

    :goto_19
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v6, "\'TIMELAPSE\'_yyyyMMdd_HHmmss"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1b
    invoke-static/range {v1 .. v14}, Lryh;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryh;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Llxo;J)Ljava/lang/String;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p1, p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p0}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_a
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/GregorianCalendar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->setCalendar(Ljava/util/Calendar;)V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    sget-object p2, Lhqx;->b:Lryh;

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method
