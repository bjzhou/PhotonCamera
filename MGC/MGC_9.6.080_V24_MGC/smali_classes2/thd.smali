.class public final Lthd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lthd;->a:Ljava/util/TimeZone;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "UTC"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 18

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

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

    nop

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v6, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->lkorRIUpOEqY:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_8
    invoke-static {v1, v3, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    :goto_d
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    :goto_10
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_2
    :goto_15
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_16
    const-string v3, ")"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw v4

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v5, "("

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v3, "\""

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    :goto_20
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v0, 0x4

    nop

    invoke-static {v1, v0, v3}, Lthd;->b(Ljava/lang/String;II)I

    move-result v4

    nop

    nop

    nop

    nop

    const/16 v5, 0x2d

    nop

    invoke-static {v1, v3, v5}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v6

    nop

    const/4 v7, 0x5

    nop

    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v0, 0x5

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v0, v3, 0x2

    nop

    nop

    nop

    invoke-static {v1, v3, v0}, Lthd;->b(Ljava/lang/String;II)I

    move-result v6

    nop

    nop

    nop

    invoke-static {v1, v0, v5}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v8

    nop

    nop

    if-eqz v8, :cond_4

    nop

    nop

    nop

    nop

    add-int/lit8 v0, v3, 0x3

    nop

    :cond_4
    add-int/lit8 v3, v0, 0x2

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v3}, Lthd;->b(Ljava/lang/String;II)I

    move-result v8

    nop

    const/16 v9, 0x54

    nop

    nop

    nop

    invoke-static {v1, v3, v9}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v11

    nop

    nop

    nop

    nop

    if-gt v11, v3, :cond_5

    nop

    new-instance v0, Ljava/util/GregorianCalendar;

    nop

    nop

    nop

    nop

    add-int/lit8 v6, v6, -0x1

    nop

    invoke-direct {v0, v4, v6, v8}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    nop

    nop

    return-object v0

    nop

    :cond_5
    const/16 v11, 0x2b

    nop

    nop

    nop

    nop

    nop

    const/16 v12, 0x5a

    nop

    nop

    const/4 v13, 0x1

    nop

    nop

    const/4 v14, 0x2

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_10

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v0, 0x3

    nop

    add-int/lit8 v9, v0, 0x5

    nop

    nop

    invoke-static {v1, v3, v9}, Lthd;->b(Ljava/lang/String;II)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/16 v15, 0x3a

    nop

    invoke-static {v1, v9, v15}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v16

    nop

    nop

    if-eqz v16, :cond_6

    nop

    nop

    add-int/lit8 v9, v0, 0x6

    nop

    nop

    :cond_6
    add-int/lit8 v0, v9, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v9, v0}, Lthd;->b(Ljava/lang/String;II)I

    move-result v16

    nop

    nop

    nop

    invoke-static {v1, v0, v15}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v15

    nop

    nop

    if-eqz v15, :cond_7

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v9, 0x3

    nop

    nop

    nop

    nop

    move v0, v9

    nop

    nop

    nop

    nop

    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    nop

    if-le v9, v0, :cond_f

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eq v9, v12, :cond_f

    nop

    nop

    if-eq v9, v11, :cond_f

    nop

    nop

    nop

    nop

    nop

    if-eq v9, v5, :cond_f

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v0, 0x2

    nop

    nop

    nop

    nop

    invoke-static {v1, v0, v9}, Lthd;->b(Ljava/lang/String;II)I

    move-result v15

    nop

    nop

    const/16 v10, 0x3b

    nop

    if-le v15, v10, :cond_8

    nop

    nop

    nop

    const/16 v10, 0x3f

    nop

    nop

    nop

    nop

    if-ge v15, v10, :cond_8

    nop

    nop

    const/16 v15, 0x3b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    const/16 v10, 0x2e

    nop

    nop

    nop

    nop

    invoke-static {v1, v9, v10}, Lthd;->c(Ljava/lang/String;IC)Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_e

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v9, v0, 0x3

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v10, v0, 0x4

    nop

    nop

    :goto_22
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-ge v10, v7, :cond_b

    nop

    nop

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    nop

    const/16 v5, 0x30

    nop

    nop

    if-lt v7, v5, :cond_a

    nop

    const/16 v5, 0x39

    nop

    nop

    nop

    nop

    if-le v7, v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_9
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    const/16 v5, 0x2d

    nop

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_23
    move v5, v10

    nop

    nop

    nop

    nop

    goto :goto_24

    nop

    nop

    :cond_b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    :goto_24
    add-int/lit8 v0, v0, 0x6

    nop

    nop

    nop

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    invoke-static {v1, v9, v0}, Lthd;->b(Ljava/lang/String;II)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v0, v9

    nop

    nop

    if-eq v0, v13, :cond_d

    nop

    nop

    nop

    nop

    if-eq v0, v14, :cond_c

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    nop

    nop

    :cond_c
    mul-int/lit8 v7, v7, 0xa

    nop

    nop

    nop

    nop

    nop

    goto :goto_25

    nop

    :cond_d
    mul-int/lit8 v7, v7, 0x64

    nop

    nop

    nop

    :goto_25
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    move v3, v5

    nop

    nop

    move/from16 v5, v16

    nop

    nop

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    :cond_e
    move v0, v3

    nop

    nop

    nop

    move v3, v9

    nop

    nop

    nop

    nop

    nop

    move/from16 v5, v16

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    goto :goto_26

    nop

    nop

    nop

    :cond_f
    move/from16 v5, v16

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v3

    nop

    nop

    nop

    move v3, v0

    nop

    nop

    move/from16 v0, v17

    nop

    goto :goto_26

    nop

    :cond_10
    const/4 v0, 0x0

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v15, 0x0

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    nop

    if-le v9, v3, :cond_19

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    nop

    nop

    nop

    if-ne v9, v12, :cond_11

    nop

    sget-object v9, Lthd;->a:Ljava/util/TimeZone;

    nop

    nop

    add-int/2addr v3, v13

    nop

    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_11
    if-eq v9, v11, :cond_13

    nop

    nop

    nop

    const/16 v10, 0x2d

    nop

    if-ne v9, v10, :cond_12

    nop

    nop

    goto :goto_27

    nop

    nop

    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    nop

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->tnUUoLBzg:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->oyukRLjtnDxV:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_13
    :goto_27
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x5

    nop

    nop

    nop

    nop

    nop

    if-ge v10, v11, :cond_14

    nop

    nop

    nop

    nop

    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    nop

    nop

    sget-object v9, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->AGMoAKwenO:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    :cond_14
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    nop

    add-int/2addr v3, v10

    nop

    const-string v10, "+0000"

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    if-nez v10, :cond_18

    nop

    nop

    const/4 v10, 0x0

    nop

    sget-object v10, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->srdo:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_29

    nop

    nop

    nop

    :cond_15
    const-string v10, "GMT"

    nop

    invoke-static {v9, v10}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    invoke-static {v9}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    nop

    if-nez v12, :cond_17

    nop

    nop

    const-string v12, ":"

    nop

    nop

    nop

    nop

    const-string v14, ""

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    nop

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    :cond_16
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    nop

    nop

    nop

    invoke-virtual {v10}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mismatching time zone indicator: "

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " given, resolves to "

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    :cond_17
    :goto_28
    move-object v9, v10

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    nop

    :cond_18
    :goto_29
    sget-object v9, Lthd;->a:Ljava/util/TimeZone;

    nop

    nop

    :goto_2a
    new-instance v10, Ljava/util/GregorianCalendar;

    nop

    nop

    invoke-direct {v10, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v9, 0x0

    nop

    nop

    nop

    invoke-virtual {v10, v9}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {v10, v13, v4}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v6, v6, -0x1

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v4, v6}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    nop

    invoke-virtual {v10, v4, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xb

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v4, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    nop

    nop

    nop

    invoke-virtual {v10, v0, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    nop

    invoke-virtual {v10, v0, v15}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v0, v7}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    const-string v3, "No time zone indicator"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2b
    invoke-direct {v4, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_37

    nop

    nop

    :goto_2c
    const-string v1, "]: "

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

    nop

    :goto_2d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2f
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2c

    nop

    nop

    :goto_32
    new-instance v4, Ljava/text/ParseException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_33
    const v1, 0x16

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_1a

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1a
    goto/32 :goto_0

    nop

    nop

    :goto_36
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method private static b(Ljava/lang/String;II)I
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    mul-int/lit8 v3, v3, 0xa

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

    :goto_1
    neg-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    goto/16 :goto_18

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    if-lt v2, p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_6
    invoke-static {v3, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt p1, p2, :cond_1

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    const-string v0, "Invalid number: "

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

    nop

    :goto_e
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2b

    nop

    nop

    :goto_10
    goto/32 :goto_35

    nop

    nop

    :goto_11
    if-gez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    sub-int/2addr v3, v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    move v2, p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1d

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    goto :goto_18

    nop

    :goto_1b
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1c
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    if-le p2, v0, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    new-instance p1, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    new-instance v1, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    if-gez v3, :cond_4

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-le p1, p2, :cond_5

    nop

    goto/32 :goto_31

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v2, p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move v2, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    throw p1

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw v1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return p0

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    neg-int p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v1, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_35
    if-gez p1, :cond_7

    nop

    goto/32 :goto_31

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/lit8 v4, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static c(Ljava/lang/String;IC)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

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

    :goto_2
    if-eq p0, p2, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lt p1, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    return p0

    nop

    nop

    nop
.end method
